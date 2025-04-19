# 🛻 NuScenes Dataset Downloader

This repository provides scripts to automate the download of the [nuScenes dataset](https://www.nuscenes.org/) by [Motional](https://www.motional.com/), with a focus on modularity and extensibility for future expansions.

---

## 📦 About the Dataset

The **nuScenes dataset (v1.0)** is a large-scale autonomous driving dataset consisting of 1000 diverse driving scenes collected in Boston and Singapore. It includes high-quality sensor data from cameras, lidar, radar, and GPS/IMU, along with full annotations.

### 🔍 Dataset Splits:

| Split     | Scenes      | Description                                                                 |
|-----------|-------------|-----------------------------------------------------------------------------|
| **mini**  | 10          | A lightweight subset of trainval, ideal for quick tests or exploration.     |
| **trainval** | 850 (700 train + 150 val) | Full dataset with annotations. Sensor data is split across 10 `.tgz` blobs, each containing ~85 scenes. |
| **test**  | 150         | Held-out for challenges. No object annotations provided.                    |

---

## 📥 Scripts Overview

### ✅ Trainval Blobs Downloader  
Downloads the 10 trainval blob archives containing sensor data.

🔗 **Script**: [`download_nuscenes_trainval_blobs.sh`](https://github.com/iampujan/download_nuscenes_dataset/blob/main/download_nuscenes_trainval_blobs.sh)

### 🛠️ Test Set Downloader *(Coming Soon)*  
Plans to add downloading functionality for the test set, with support for metadata and optional modalities (camera/lidar/radar).

---

## 🚀 Usage: Trainval Downloader

```bash
./download_nuscenes_trainval_blobs.sh [target_dir] [start_index] [end_index]
