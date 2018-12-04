#include <embree3/rtcore.isph>

export void benchmark_wrapper(RTCScene scene, uniform RTCIntersectContext* uniform context, varying RTCRayHit* uniform rayhit)
{
  //print("Running rtcInstersectV\n");
  rtcIntersectV(scene, context, rayhit);
}