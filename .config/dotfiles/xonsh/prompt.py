def _prompt():
  prompt_str = '╭─ {BLUE}'

  current_dir = $(pwd).strip()

  if current_dir == $HOME: 
    prompt_str += ' '
  
  prompt_str += '{cwd}{RESET}\n'

  prompt_str += '├─\n'
  


  prompt_str += '╰─ {GREEN}λ{RESET} ' 

  return prompt_str 

$PROMPT = _prompt

$PL_RPROMPT = '' 
$PL_TOOLBAR = '' 
