{ edge, edges }:

edge.capnp {
  src = ./.;
  edges =  with edges.capnp; [
        CoreGraphListEdge
        CoreGraphListExt
        CoreGraphListImsg
        CoreGraphListNode
      ];
  schema = with edges.capnp; ''
    struct CoreGraph {
      path @0 :Text;
      nodes @1 :CoreGraphListNode;
      edges @2 :CoreGraphListEdge;
      imsgs @3 :CoreGraphListImsg;
      externalInputs @4 :CoreGraphListExt;
      externalOutputs @5 :CoreGraphListExt;
    }

  '';
}
