function pipir -d "do pip install -r requirments.txt" --wraps "pip install -r requirements.txt"
    pip install -r requirments.txt $argv
end
function pipreq -d "export requirements.txt" --wraps "pip freeze > requirements.txt"
    pip freeze $argv >requirements.txt
end
