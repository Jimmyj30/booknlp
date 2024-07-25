from booknlp.booknlp import BookNLP

model_params={
        "pipeline":"entity,quote,supersense,event,coref", 
        "model":"big"
    }
    
booknlp=BookNLP("en", model_params)

# Input file to process. maybe manually transcribe this later...
input_file="wild_things.txt"

# Output directory to store resulting files in
output_directory="wild_things"

# File within this directory will be named ${book_id}.entities, ${book_id}.tokens, etc.
book_id="wild_things"

booknlp.process(input_file, output_directory, book_id)