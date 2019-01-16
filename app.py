import os
import time
import urllib.request

from flask import Flask
app = Flask(__name__)

PORT = os.environ.get('PORT', 80)
SERVICE_NAME = os.environ.get('SERVICE_NAME', 'test-1-v1')
UPSTREAM_URI = os.environ.get('UPSTREAM_URI', 'http://time.jsontest.com/')

def key_text(text):
    return "<span style='color: Blue; font-weight: bold;'>{}</span>".format(text)

@app.route("/")
def hello():
    start_time = time.time()

    # Get response from upstream service.
    response = urllib.request.urlopen(UPSTREAM_URI)
    try:
        resp = response.read().decode('utf-8')
    except Exception:
        resp = "Error reaching upstream."


    time_spent = round(time.time() - start_time, 2)

    output = {
        "Service": SERVICE_NAME,
        "Time": time_spent,
        "Upstream URI": UPSTREAM_URI,
        "Response": resp
    }

    # from pdb import set_trace;set_trace()

    return "\n".join(["{}: {}".format(key_text(key), output[key]) for key in output]).replace('\n', '<br>')

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(PORT))