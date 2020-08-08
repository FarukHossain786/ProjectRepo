<h3 class="font-bold text-xl mb-3 ml-3">Following</h3>
<ul>
    @foreach (auth()->user()->follows as $user)
        <li class="mb-4">
            <div >
                <a href="{{ route('profile', $user)}}" class="flex items-center text-sm">
                    <img 
                        src="https://i.pravatar.cc/40"
                        alt=""
                        class="rounded-full mr-2"
                    >
                     {{ $user-> name }}
                </a>
            </div>
        </li>
        
    @endforeach
    
</ul>