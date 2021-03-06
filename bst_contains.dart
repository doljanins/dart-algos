class Node {
  var data;
  var rigth;
  var left;

  Node(this.data);

  void insert(int newData, [Node node]) {
    node ??= this;

    if (newData < node.data) {
      if (node.left == null) {
        node.left = Node(newData);
      } else {
        insert(newData, node.left);
      }
    }

    if (newData > node.data) {
      if (node.rigth == null) {
        node.rigth = Node(newData);
      } else {
        insert(newData, node.rigth);
      }
    }
  }

  Node contains(int givenData, [Node node]) {
    node ??= this;

    if (givenData == node.data) {
      return node;
    } else if (givenData < node.data && node.left != null) {
      return contains(givenData, node.left);
    } else if (givenData > node.data && node.rigth != null) {
      return contains(givenData, node.rigth);
    }

    return null;
  }
}

main() {
  var node = Node(4);

  node.insert(2);
  node.insert(5);
  node.insert(-1);
  node.insert(3);

  print('node ${node.data}');
  print('node.left ${node.left.data}');
  print('node.rigth ${node.rigth.data}');
  print('node.left.left ${node.left.left.data}');
  print('node.left.rigth ${node.left.rigth.data}');

  print(node.contains(5).data);
}
