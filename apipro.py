from flask import Flask, jsonify, request

# Create a Flask app instance
app = Flask(__name__)

# Simple API route that returns a JSON message
@app.route('/api', methods=['GET'])
def get_message():
    return jsonify({"message": "Hello from Flask API!"})

# API route with a parameter, returns a greeting message
@app.route('/api/greet/<name>', methods=['GET'])
def greet_user(name):
    return jsonify({"message": f"Hello, {name}!"})

# Run the application
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
