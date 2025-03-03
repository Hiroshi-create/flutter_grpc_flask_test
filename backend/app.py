# サーバー側のコード（Flask）
from flask import Flask
import grpc
from concurrent import futures
import time

from grpc.tools import protoc

protoc.main((
    '',                       # おまじない
    '-I.',                    # protoを走査するディレクトリの指定 --proto_path=***でもよい
    '--python_out=.',         # ***_pb2.pyの保存場所
    '--grpc_python_out=.',    # ***_pb2_grpc.pyの保存場所 ↑と別々にする利点はほぼ無いと思われる
    'helloworld.proto',       # 変換するprotoファイルの指定
))

# 生成されたコードをインポートする
# import count_pb2
# import count_pb2_grpc
from grpc_gen import count_pb2

# カウントを保持する変数
count = 0

# CountServiceServicerというクラスを定義する
# このクラスはcount_pb2_grpc.CountServiceServicerを継承する
class CountServiceServicer(count_pb2_grpc.CountServiceServicer):

    # Incrementというメソッドを実装する
    # このメソッドはcount_pb2_grpc.CountServiceServicerに定義されている
    def Increment(self, request, context):
        # グローバル変数countにアクセスするためにglobal宣言する
        global count
        # countを1増やす
        count += 1
        # CountResponseというメッセージ型のオブジェクトを作成する
        response = count_pb2.CountResponse()
        # responseのcountフィールドに現在のcountの値をセットする
        response.count = count
        # responseを返す
        return response

# Flaskアプリケーションを作成する
app = Flask(__name__)

# gRPCサーバーを作成する関数
def serve():
    # gRPCサーバーを作成する
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    # CountServiceServicerのインスタンスを作成する
    servicer = CountServiceServicer()
    # add_CountServiceServicer_to_serverという関数でサービスを登録する
    # この関数は生成されたコードに含まれている
    count_pb2_grpc.add_CountServiceServicer_to_server(servicer, server)
    # 50051番ポートで待ち受けるように設定する
    server.add_insecure_port('[::]:50051')
    # サーバーを開始する
    server.start()
    # サーバーが終了しないように待機する
    server.wait_for_termination()

if __name__ == '__main__':
    # 別スレッドでgRPCサーバーを起動する
    serve_thread = futures.ThreadPoolExecutor(max_workers=1).submit(serve)
    # Flaskアプリケーションを起動する（デバッグモード）
    app.run(debug=True)






















# # flaskモジュールからFlaskクラスをインポート
# from flask import Flask

# # アプリケーションオブジェクトを作成
# app = Flask(__name__)

# # ルーティングの設定
# @app.route("/")
# def index():
#     # レスポンスを返す
#     return "Hello, World!"

# # アプリケーションの実行
# if __name__ == "__main__":
#     app.run()