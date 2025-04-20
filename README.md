# 🛻 NuScenes Dataset Downloader

This repository provides scripts to automate the download of the [nuScenes dataset](https://www.nuscenes.org/) by [Motional](https://www.motional.com/), with a focus on modularity and extensibility for future expansions. 
Please use it responsibly and solely for educational and research purposes.

---

## 📦 About the Dataset

The **nuScenes dataset (v1.0)** is a large-scale autonomous driving dataset consisting of 1000 diverse driving scenes collected in Boston and Singapore. It includes high-quality sensor data from cameras, lidar, radar, and GPS/IMU, along with full annotations.

### 🔍 Dataset Splits:

| Split        | Scenes                    | Description                                                                                              |
| ------------ | ------------------------- | -------------------------------------------------------------------------------------------------------- |
| **mini**     | 10                        | A lightweight subset of trainval, ideal for quick tests or exploration.                                  |
| **trainval** | 850 (700 train + 150 val) | Full dataset with annotations. Sensor data is split across 10 `.tgz` blobs, each containing \~85 scenes. |
| **test**     | 150                       | Held-out for challenges. No object annotations provided.                                                 |

---

## 📥 Scripts Overview

### ✅ Trainval Blobs Downloader

Downloads the 10 trainval blob archives containing sensor data.

🔗 **Script**: [`download_nuscenes_trainval_blobs.sh`](https://github.com/iampujan/download_nuscenes_dataset/blob/main/download_nuscenes_trainval_blobs.sh)

### ✅ Test Blob Downloader

Downloads the test set blob file (only one `.tgz` archive available).

🔗 **Script**: [`download_nuscenes_test_blob.sh`](https://github.com/iampujan/download_nuscenes_dataset/blob/main/download_nuscenes_test_blob.sh)

---

## 🚀 Usage

### ▶️ Trainval Downloader

```bash
./download_nuscenes_trainval_blobs.sh [target_dir] [start_index] [end_index]
```

Example:

```bash
./download_nuscenes_trainval_blobs.sh ./data/trainval 1 10
```

### ▶️ Test Blob Downloader

```bash
./download_nuscenes_test_blob.sh [target_dir]
```

Example:

```bash
./download_nuscenes_test_blob.sh ./data/test
```

---

## 💡 Tips

- Use tools like `tmux` or `screen` to keep downloads running in the background on a remote server.
- Use `-c` with `wget` to resume interrupted downloads.
- Check available disk space with `du -sh .` or `df -h` before starting.
