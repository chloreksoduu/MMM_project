//
//  MainPageView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct MainPageView: View {
    @State private var search: String = ""
    @State private var selectedIndex: Int = 1
    private let categories = ["Wszystko", "Przepisy", "Produkty", "Artykuły", "Opinie", "Danie dnia"]
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack (alignment: .leading) {
                        TopNavBar()
                        
                        Text("Witaj użytkowniku!")
                            .padding()
                            .font(.system(size: 24))
                        
                        SearchView(search: $search)
                            .padding(.leading, 20)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<categories.count) { index in
                                    Button(action: { selectedIndex = index }) {
                                        CategoryView(isActive: selectedIndex == index, text: categories[index])
                                    }
                                }
                            }
                            .padding()
                        }
                        
                        switch categories[selectedIndex] {
                            case "Wszystko":
                                AllDataView()
                            case "Przepisy":
                                PopularRecipesView()
                            case "Produkty":
                                PopularProductsView()
                            case "Artykuły":
                                PopularArticlesView()
                            case "Opinie":
                                RatingView(opinions: opinions)
                            case "Danie dnia":
                                showRecipeOfTheDay()
                            
                            default:
                                RatingView(opinions: opinions)
                        }
                    }
                }
            }
        }
    }
}

struct AllDataView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Popularne przepisy")
                .font(.system(size:22))
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators:false){
                HStack(spacing:0){
                    ForEach(recipies.prefix(5)) { i in
                        NavigationLink(destination: RecipeDetailScreen(viewmodel: i), label: {
                            RecipeCardView(image: Image(i.imgName), title: i.title, rating: i.rating, size: 210)
                        })
                        .navigationBarHidden(true)
                        .foregroundColor(.black)
                    }
                }
            }.padding(.bottom)
            
            Text("Popularne produkty")
                .font(.system(size:22))
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators:false){
                HStack(spacing:0){
                    ForEach(products.prefix(5)) { i in
                        NavigationLink(destination: ProductDetailScreen(viewmodel: i), label: {
                            ProductCardView(image: Image(i.imgName), title: i.title, rating: i.rating, size: 210)
                        })
                        .navigationBarHidden(true)
                        .foregroundColor(.black)
                    }
                }
                .padding(.leading)
            }.padding(.bottom)
            
            Text("Popularne artykuły")
                .font(.system(size:22))
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators:false){
                HStack(spacing:0){
                    ForEach(articles.prefix(5)) { i in
                        NavigationLink(destination: ArticleDetailScreen(viewmodel: i), label: {
                            ArticleCardView(image: Image(i.imgName), title: i.title, rating: i.rating, size: 210, category: i.category)
                        })
                        .navigationBarHidden(true)
                        .foregroundColor(.black)
                    }
                }
                .padding(.leading)
            }.padding(.bottom)
        }
    }
}

struct PopularRecipesView: View {
    let recipes = recipies
    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 16), count: 2)
    let spacing: CGFloat = 16
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeDetailScreen(viewmodel: recipe)) {
                        RecipeCardView(image: Image(recipe.imgName), title: recipe.title, rating: recipe.rating, size: (UIScreen.main.bounds.width - 3 * spacing) / 2)
                            .aspectRatio(1, contentMode: .fit)
                    }
                    .foregroundColor(.black)
                }
            }
            .padding(spacing)
        }
    }
}


struct PopularProductsView: View {
    let product = products
    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 16), count: 2)
    let spacing: CGFloat = 16
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(products) { product in                    NavigationLink(destination: ProductDetailScreen(viewmodel: product)) {
                        ProductCardView(image: Image(product.imgName), title: product.title, rating: product.rating, size: 210)
                    }
                    .navigationBarHidden(true)
                    .foregroundColor(.black)
                }
            }
            .padding(spacing) 
        }
        .padding(.bottom)
    }
}



struct PopularArticlesView: View {
    let article = articles
    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 16), count: 1)
    let spacing: CGFloat = 16
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(articles) { article in
                    NavigationLink(destination: ArticleDetailScreen(viewmodel: article)) {
                        ArticleCardView(image: Image(article.imgName), title: article.title, rating: article.rating, size: 320, category: article.category)
                    }
                    .navigationBarHidden(true)
                    .foregroundColor(.black)
                }
            }
            .padding(spacing)
        }
        .padding(.bottom)
    }
}

struct RatingView: View {
    var opinions: [Opinion]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Opinie")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 8)
            
            ForEach(opinions) { opinion in
                OpinionCardView(opinion: opinion)
                    .padding(.bottom, 16)
            }
        }
    }
}


struct showRecipeOfTheDay: View {
    let recipes = recipies
    var body: some View {
        if let recipeOfTheDay = recipes.randomElement() {
            VStack {
                Text("Danie dnia")
                RecipeCardView(image: Image(recipeOfTheDay.imgName), title: recipeOfTheDay.title, rating: recipeOfTheDay.rating, size: 150)
            }
        } else {
            Text("Brak dostępnych przepisów")
        }
    }
}



#Preview {
    MainPageView()
}
