class Queries {
   getAll(){
    return """
      {
      rockets(limit: 10) {
        country
        description
        boosters
        company
      }
    }
    """;
  }
}