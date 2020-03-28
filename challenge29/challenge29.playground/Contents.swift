import Foundation

func challenge29() -> URL {
  let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
  return paths[0]
}
