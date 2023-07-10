import Image from 'next/image'

export default function Home() {
  return (
    <main className="flex items-center justify-center h-screen">
        



      <div className="rounded bg-slate-200">
        <div>
          <Image  src="/progzilla.jpg" alt="progzilla-cover" width="500" height="500" />               
        </div>
       
          <audio controls preload="none">
                  <source src="https://proxy.progzilla.com/live" type="audio/mp3" />
                  Your browser does not support the audio tag.
          </audio>        
        </div>


    </main>
  )
}
