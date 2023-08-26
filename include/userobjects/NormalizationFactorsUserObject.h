#pragma once

#include "GeneralUserObject.h"


class SPHFactorsUserObject;

class NormalizationFactorsUserObject : public GeneralUserObject

{
public:
  static InputParameters validParams();

  NormalizationFactorsUserObject(const InputParameters & parameters);


//virtual void initialize() override {}
//virtual void execute() override {}
//virtual void finalize() override {}

virtual void initialize() override;
virtual void execute() override;
virtual void finalize() override {};

RealEigenVector getNormalizationFactors() const;

protected:

std::vector<UserObjectName> _SPH_user_objects;
std::vector<std::reference_wrapper<const SPHFactorsUserObject>> UO_vector; 

RealEigenVector _ref_integrals;
RealEigenVector _current_integrals;



};
