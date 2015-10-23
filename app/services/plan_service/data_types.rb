module PlanService::DataTypes
  Configuration = EntityUtils.define_builder(
    [:active, :str_to_bool, :to_bool, :mandatory],
    [:jwt_secret, :string, :optional] # Not needed if not in use
  )

  Plan = EntityUtils.define_builder(
    [:id, :fixnum, :optional], # For OS, the plan is not actually in DB. Thus, optional.
    [:community_id, :fixnum, :mandatory],
    [:plan_level, :fixnum, :mandatory],
    [:expires_at, :time, :optional],
    [:created_at, :time, :mandatory],
    [:updated_at, :time, :mandatory],
  )

end
