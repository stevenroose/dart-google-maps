// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

class KmlLayerOptions extends jsw.TypedJsObject {
  static KmlLayerOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new KmlLayerOptions.fromJsObject(jsObject);
  KmlLayerOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  KmlLayerOptions();

  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  set map(GMap map) => $unsafe['map'] = map == null ? null : map.$unsafe;
  GMap get map => GMap.$wrap($unsafe['map']);
  set preserveViewport(bool preserveViewport) => $unsafe['preserveViewport'] = preserveViewport;
  bool get preserveViewport => $unsafe['preserveViewport'];
  set suppressInfoWindows(bool suppressInfoWindows) => $unsafe['suppressInfoWindows'] = suppressInfoWindows;
  bool get suppressInfoWindows => $unsafe['suppressInfoWindows'];
  set url(String url) => $unsafe['url'] = url;
  String get url => $unsafe['url'];
}
