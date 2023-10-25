from flask import Flask
app = Flask(__name__)
import datetime


@app.route('/')
def hello():
    now = (datetime.datetime.utcnow() - datetime.timedelta(hours=4)).strftime("%I:%M%p on %B %d, %Y")
    return """


    <html>

        <head>
            <title>Docker Test</title>

            <style>
                
                body{
                    background-color:lightblue;
                    padding-top:50px;
                    text-align:center;
                    font-family:'Trebuchet MS';
               }
                
                table{
                    margin: 50px auto;
                }


            </style>

        </head>

        <body>

            <h1>Testing Docker Stuff</h1>

            <p>
                Just trying to get the hang of docker in terminal
            </p>

            <table>
                
                <tr>
                    <th>col1</th>
                    <th>col2</th>
                </tr>

                <tr>
                    <td>data1</td>
                    <td>data2</td>
                </tr>

            </table>

            <h2>Current time:</h2>
            <p>%s</p>

        </body>

    </html>


 """ % now

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True, port=3000)

