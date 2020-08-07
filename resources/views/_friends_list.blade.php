<h3 class="font-bold text-xl mb-3 ml-3">Following</h3>
<ul>
    @foreach (auth()->User()->follows as $user)
        <li class="mb-4">
            <div class="flex items-center">
                <img 
                    src="https://i.pravatar.cc/40"
                    alt=""
                    class="rounded-full mr-2"
                >
               {{ $user-> name }}
            </div>
        </li>
        
    @endforeach
    
</ul>