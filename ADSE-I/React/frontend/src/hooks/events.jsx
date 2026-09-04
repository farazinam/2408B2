function ByClick(){
    function HandleClick(){
        alert("You Clicked a Button!")
    }
    return (
        <>
        <button onClick={HandleClick}> Alert </button>
        </>
    )
}

function ByChange(){
    function HandleChange(e){
        console.log(e.target.value);
    }
    return (
        <>
        <input type="text" onChange={HandleChange} />
        </>
    )
}

function Events(){
    return (
        <>
        <ByClick />
        <ByChange />
        </>
    )
}

export default Events;