function sieveOfEratosthenes(n)
  prime = Bool[];
  for i in 0:n
    push!(prime, true);
  end

  p = 2;

  while( p*p <= n )
    if(prime[p] == true)
      i = p*p;
      while(i < n)
        prime[i] = false;
        i += p;
      end
    end
    p += 1;
  end

  print("[OUTPUT] ");
  for i in 2:n
    if(prime[i] == true)
      print(i, " ");
    end
  end
  println("");
end

input = 20;
println("[INPUT] ", input);
sieveOfEratosthenes(input);
