@implementer-agreement
@SYS
@version1
@disabled
Feature: SYS001 - Cable signal flow
The rule verifies that IfcCableSegment must define 2 distribution ports, 1 as a SOURCE, one as a SINK

  @E00100
  Scenario: Agreement on IfcCableSegment having ports

    Given A file with Schema Identifier "IFC4X3_TC1" or "IFC4X3_ADD1" or "IFC4X3"
    And An IfcCableSegment
    Then It must be nested by exactly 2 instance(s) of IfcDistributionPort

  @E00080
  Scenario: Agreement on port directions

    Given An IfcCableSegment
    And There exists a relationship IfcRelNests from IfcAlignment to IfcDistributionPort and following that
    And Its attribute FlowDirection
    Then at least "1" value must be "SOURCE"
    Then at least "1" value must be "SINK"
