function pipreq -d "export requirements.txt" --wraps "pip freeze > requirements.txt"
    pip freeze $argv >requirements.txt
end