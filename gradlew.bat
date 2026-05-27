package com.realistictrees.world;

import com.realistictrees.RealisticTreesMod;
import com.realistictrees.world.feature.RealisticTreeFeature;
import net.minecraft.registry.Registries;
import net.minecraft.registry.Registry;
import net.minecraft.util.Identifier;
import net.minecraft.world.gen.feature.DefaultFeatureConfig;
import net.minecraft.world.gen.feature.Feature;

/**
 * Registers the custom Feature TYPE into Minecraft's static Feature registry.
 * The matching ConfiguredFeature and PlacedFeature are defined in JSON data files
 * (data/realistictrees/worldgen/...) so Minecraft loads them as part of worldgen.
 */
public class ModFeatures {

    public static final Feature<DefaultFeatureConfig> REALISTIC_TREE =
        Registry.register(
            Registries.FEATURE,
            new Identifier(RealisticTreesMod.MOD_ID, "realistic_tree"),
            new RealisticTreeFeature(DefaultFeatureConfig.CODEC)
        );

    /** Call this from onInitialize() to trigger class-load and run the static registration above. */
    public static void registerFeatures() {
        RealisticTreesMod.LOGGER.info("[RealisticTrees] Feature types registered.");
    }
}
