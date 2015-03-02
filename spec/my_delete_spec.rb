describe "My Delete Methods" do

  # activists
  let(:activists) { ["Rosa Parks", "Harriet Tubman", "Joan Baez", "Amal Clooney", "Ruby Dee"] }
  let(:no_harriet_tubman) { ["Rosa Parks", "Joan Baez", "Amal Clooney", "Ruby Dee"] }
  
  # birds
  let(:birds) { ["crow", "owls", "dove", "duck", "dove", "hawk", "dove", "gulls", "owls", "wrens", "owls"] }
  # owls
  let(:no_first_owl)  { ["crow", "dove", "duck", "dove", "hawk", "dove", "gulls", "owls", "wrens", "owls"] }
  let(:no_last_owl) { ["crow", "owls", "dove", "duck", "dove", "hawk", "dove", "gulls", "owls", "wrens"] }
  let(:no_middle_owl) { ["crow", "owls", "dove", "duck", "dove", "hawk", "dove", "gulls", "wrens", "owls"] }
  # doves
  let(:no_first_dove) { ["crow", "owls", "duck", "dove", "hawk", "dove", "gulls", "owls", "wrens", "owls"]}
  let(:no_last_dove) { ["crow", "owls", "dove", "duck", "dove", "hawk", "gulls", "owls", "wrens", "owls"] }
  let(:no_middle_dove) { ["crow", "owls", "dove", "duck", "hawk", "dove", "gulls", "owls", "wrens", "owls"] }

  # landmarks
  let(:landmarks) { [ "city hall", "met", "uss intrepid", "met", "moma", "met"] }
  let(:no_first_met) { [ "city hall", "uss intrepid", "met", "moma", "met"] }
  let(:no_last_met) { [ "city hall", "met", "uss intrepid", "met", "moma"] }
  let(:no_middle_met) { [ "city hall", "met", "uss intrepid", "moma", "met"] }

  # numbers
  let(:numbers) { [2,3,1,4,5,1,6,7,1,8,9] }
  let(:no_first_one) { [2,3,4,5,1,6,7,1,8,9] }
  let(:no_last_one) {[ 2,3,1,4,5,1,6,7,8,9] }
  let(:no_middle_one) { [2,3,1,4,5,6,7,1,8,9] }

  describe "#delete_first" do

    it "deletes the first element that matches what is passed as an argument" do
      expect(birds.delete_first("owls")).to eq(no_first_owl)
      expect(birds.delete_first("dove")).to eq(no_first_dove)
      expect(landmarks.delete_first("met")).to eq(no_first_met)
      expect(numbers.delete_first(1)).to eq(no_first_one)
    end

    it "deletes one element if there is only one that matches the argument" do
      expect(activists.delete_first("Harriet Tubman")).to eq(no_harriet_tubman)
    end

  end

  describe "#delete_last" do

    it "deletes the last element that matches what is passed as an argument" do
      expect(activists.delete_last("Harriet Tubman")).to eq(no_harriet_tubman)
      expect(birds.delete_last("owls")).to eq(no_last_owl)
      expect(birds.delete_last("dove")).to eq(no_last_dove)
      expect(landmarks.delete_last("met")).to eq(no_last_met)
      expect(numbers.delete_last(1)).to eq(no_last_one)
    end

    it "deletes one element if there is only one that matches the argument" do
      expect(activists.delete_last("Harriet Tubman")).to eq(no_harriet_tubman)
    end

  end

  describe "#delete_middle" do

    it "deletes the middle element that matches what is passed as an argument" do
      expect(numbers.delete_middle(1)).to eq(no_middle_one)
      expect(landmarks.delete_middle("met")).to eq(no_middle_met)
      expect(birds.delete_middle("owls")).to eq(no_middle_owl)
      expect(birds.delete_middle("dove")).to eq(no_middle_dove)
    end 

    it "deletes one element if there is only one that matches the argument" do
      expect(activists.delete_middle("Harriet Tubman")).to eq(no_harriet_tubman)
    end

    it "deletes the two middle elements if there are an even number" do   
      nums = [1,0,2,0,3,4,5,0,6,7,8,0,9]
      expect(nums.delete_middle(0)).to eq([1,0,2,3,4,5,6,7,8,0,9])
      letters = ["a", "x", "b", "x", "c", "x", "d", "x", "e", "x", "f", "x"]
      no_middle_xs = ["a", "x", "b", "x", "c", "d", "e", "x", "f", "x"]
      expect(letters.delete_middle("x")).to eq(no_middle_xs)
    end

  end

end
