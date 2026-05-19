{ ... }:
{
  plugins.jdtls = {
    enable = true;

    settings = {
      java = {
        format = {
          enabled = true;
        };
        
        completion = {
          favoriteStaticMembers = [
            "org.hamcrest.MatcherAssert.assertThat"
            "org.hamcrest.Matchers.*"
            "org.junit.Assert.*"
            "java.util.Objects.requireNonNull"
          ];
        };

        sources = {
          organizeImports = {
            starThreshold = 9999;
            staticStarThreshold = 9999;
          };
        };

        codeGeneration = {
          toString = {
            template = "\${object.className}{\${member.name()}=\${member.value}, \${otherMembers}}";
          };
        };
      };
    };
  };
}
