module Types
  class FactInterventionType < Types::BaseObject
    field :id, ID, null: false
    field :employee_id, Integer, null: true
    field :building_id, Integer, null: true
    field :battery_id, Integer, null: true
    field :column_id, Integer, null: true
    field :elevator_id, Integer, null: true
    field :start_intervention, GraphQL::Types::ISO8601Date, null: true
    field :end_intervention, GraphQL::Types::ISO8601Date, null: true
    field :result, String, null: true
    field :report, String, null: true
    field :status, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # /building
    field :building, Types::BuildingType, null: true

    def building
      Building.where(id: object.building_id)[0]
    end

    # /employee
    field :employee, Types::EmployeeType, null: true

    def employee
      Employee.where(id: object.employee_id)[0]
    end
    
    # /address
    field :address, Types::AddressType, null: true

    def address
      Address.where(id: object.building_id)[0]
    end
  end
end
