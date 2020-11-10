let searchField = document.querySelector('#searchField');
let oldFollowers = document.querySelector('.old-followers');
let newFollowers = document.querySelector('.new-followers');
let notFound = document.querySelector('.not-found');
let addContent = document.querySelector('.add-content');

searchField.addEventListener('keyup', (e) => {
	const searchValue = e.target.value;
	if (searchValue.trim().length > 3) {
		fetch("search-friend/", {
			body: JSON.stringify({ searchText: searchValue }),
			method: "POST",
		})
		.then((res) => res.json())
		.then((data) => {
			console.log(data)
			if (data.length === 0){
				notFound.style.display = 'block'
				oldFollowers.style.display = 'none'
				newFollowers.style.display = 'none'
			}else{
				oldFollowers.style.display = 'none'
				newFollowers.style.display = 'block'
				notFound.style.display = 'none'
				data.forEach(item=>{
					addContent.innerHTML = `
						<div class='re-post-thumbnil'>
							<a href='#'>
								<img src="media/${ item.image }" height="70" width="70" alt="">
							</a>
						</div>
						<div class='rs-post-content' style="width: 250px;">
							<a href='#' style="margin-top: 10px;">
								<b>${ item.name }</b>
							</a>
							<a href="{% url 'follow_friend' ${item.id} %}" class="btn-sm btn-primary float-right">Follow</a>
						</div>
					`
					})
			}
		})
	}else{
		oldFollowers.style.display = 'block'
		newFollowers.style.display = 'none'
		notFound.style.display = 'none'
	}
})