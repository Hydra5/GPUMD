/*
    Copyright 2017 Zheyong Fan, Ville Vierimaa, Mikko Ervasti, and Ari Harju
    This file is part of GPUMD.
    GPUMD is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    GPUMD is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with GPUMD.  If not, see <http://www.gnu.org/licenses/>.
*/


#pragma once

#include "gpu_vector.cuh"
#include <vector>


class Velocity
{
public:

    void initialize
    (
        const bool has_velocity_in_xyz,
        const double initial_temperature,
        const std::vector<double>& cpu_mass,
        const std::vector<double>& cpu_x,
        const std::vector<double>& cpu_y,
        const std::vector<double>& cpu_z,
        std::vector<double>& cpu_vx,
        std::vector<double>& cpu_vy,
        std::vector<double>& cpu_vz,
        GPU_Vector<double>& vx,
        GPU_Vector<double>& vy,
        GPU_Vector<double>& vz
    );

private:

    void initialize_cpu
    (
        const double initial_temperature,
        const std::vector<double>& cpu_mass,
        const std::vector<double>& cpu_x,
        const std::vector<double>& cpu_y,
        const std::vector<double>& cpu_z,
        std::vector<double>& cpu_vx,
        std::vector<double>& cpu_vy,
        std::vector<double>& cpu_vz
    );

    void scale
    (
        const double initial_temperature,
        const std::vector<double>& cpu_mass,
        std::vector<double>& cpu_vx,
        std::vector<double>& cpu_vy,
        std::vector<double>& cpu_vz
    );
};


