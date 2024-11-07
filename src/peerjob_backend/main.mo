import List "mo:base/List";
actor {

  type userRole = {
    #Freelancer;
    #Employer;
    #Admin;
  };
  type User = {
    id : Text;
    name : Text;
    email : Text;
    password : Text;
    role : userRole;
    wallet_id : Blob;
    created_at : Text;
    UserProficiencies : List.List<Text>;
    UserSkills : List.List<Text>;
    UserProjects : List.List<Text>;
  };

  type Job = {
    id : Text;
    title : Text;
    description : Text;
    skills : List.List<Text>;
    budget : Int;
    created_at : Text;
    deadline : Text;
    status : Text;
    employer_id : Text;
    freelancer_id : Text;
  };

  type Wallet = {
    id : Text;
    balance : Int;
    created_at : Text;
  };

  let users : List.List<User> = List.nil<User>();
  let wallets : List.List<User> = List.nil<User>();
  let jobs : List.List<Job> = List.nil<Job>();

  public query func create_user(args : User) : async User {
    return args;
  };

  public query func get_freelancers() : async List.List<User> {
    return users;
  };

  public query func get_freelancerswithSkill(skills : List.List<Text>) : async List.List<User> {
    return users;
  };

  public query func post_job(args : Job) : async Job {
    return args;
  };

  public query func get_jobs_with_skill(skills : List.List<Text>) : async List.List<Job> {
    return jobs;
  };

  public query func transfer_to(wallet_id : Nat, user_id : Nat, amount : Nat, job_id : Nat) : async () {};

  public query func fund_wallet(wallet_id : Nat, amount : Nat) : async ?Wallet {
    switch (wallets) {

    };
  };

  public query func get_jobs() : async List.List<Job> {
    return jobs;
  };

  public query func update_user(args : User) : async User {
    return args;
  };

};
