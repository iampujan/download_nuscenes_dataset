# NuScenes Trainval Blobs Downloader

This Bash script automates the download of **NuScenes trainval blob files** (`v1.0-trainvalXX_blobs.tgz`) from the official dataset storage. It supports custom download directories and blob ranges.

---

## 🔧 Script: `download_nuscenes_trainval_blobs.sh`

### ✅ Features
- Downloads trainval blobs (`v1.0-trainval01` to `v1.0-trainval10`)
- Supports custom target directory
- Allows custom range of blobs to download
- Resumable downloads using `wget -c`

---

## 📥 Usage

```bash
./download_nuscenes_trainval_blobs.sh [target_dir] [start_index] [end_index]
