sqrt_n number | number < 0  = -666 --хотел вывести что-то типа NaN, но не нашел, как это сделать правильно :(
              | otherwise   = newtonMethod number (number * 0.5)


newtonMethod number answer  | abs (number - answer * answer) > abs (number * eps) = newtonMethod number curr
                            | otherwise                                           = answer
                    where eps  = 0.0000001
                          curr = (answer * answer + number) / (2 * answer)


sum_digits number    | number < 10 = number
                     | otherwise = sum_digits (number `div` 10) + (number `mod` 10)


count_digits number     | number < 10 = 1
                        | otherwise = count_digits (number `div` 10) + 1
