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

part of google_maps_panoramio;

@wrapper @forMethods @skipConstructor abstract class PanoramioLayer extends MVCObject {
  jsw.SubscribeStreamProvider<PanoramioMouseEvent> _onClick;

  PanoramioLayer([PanoramioLayerOptions opts]) : super(maps['panoramio']['PanoramioLayer'], [jsw.Serializable.$unwrap(opts)]) { _initStreams(); }
  PanoramioLayer.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", PanoramioMouseEvent.$wrap);
  }

  Stream<PanoramioMouseEvent> get onClick => _onClick.stream;

  GMap get map;
  String get tag;
  String get userId;
  set map(GMap map);
  set options(PanoramioLayerOptions options);
  set tag(String tag);
  set userId(String userId);
}
