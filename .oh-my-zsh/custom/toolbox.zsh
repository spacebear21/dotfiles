export untilfail ()
{
  count=0
  while "$@"; do
    (( count++ ))
    echo "###### RUN COUNT: $count ######"
  done && say "failed after $count runs"
}
