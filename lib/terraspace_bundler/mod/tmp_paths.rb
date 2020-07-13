class TerraspaceBundler::Mod
  module TmpPaths
    def setup_tmp
      FileUtils.mkdir_p(cache_root)
      FileUtils.mkdir_p(stage_root)
    end

    def tmp_root
      "/tmp/terraspace/bundler"
    end

    def cache_root
      "#{tmp_root}/cache"
    end

    def stage_root
      "#{tmp_root}/stage"
    end

    def cache_path(name)
      "#{cache_root}/#{name}"
    end

    def stage_path(name)
      "#{stage_root}/#{name}"
    end
  end
end
