import os, json
from openai import OpenAI
from dotenv import load_dotenv

def generate(request):
    load_dotenv()
    client = OpenAI(
        organization=os.getenv('ORG'),
        api_key=os.getenv('KEY')
    )
    if request.method == 'GET':
        req = {
            'messages': [{
                'content': 'hello world',
                'role': 'user'
            }],
            'model': 'gpt-4',
            'max_tokens': 50
        }
        res = client.chat.completions.create(**req)
        return json.dumps(res.choices[0].message.content)