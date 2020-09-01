# Setup:

```bash
bash install_pylucene.sh
```


# Usage:

```bash
source activate xy_linking
python linking.py --run --dir $ner_dir
source deactivate
```
python linking.py --index /data2/OPERA/LDC2020E27_AIDA_Phase_2_Practice_Topics_Reference_Knowledge_Base_V1.1 --index-dir /data2/zaid/OPERA_data/LDC2020E11_output_mini/refkb_index --country-codes VE

bash run_linking.sh /data2/zaid/OPERA_data/LDC2020E11_output_mini/hector_out/english/csr/ /data2/zaid/OPERA_data/LDC2020E11_output_mini/hector_out/english/csr_linked/ en /data2/zaid/OPERA_data/LDC2020E11_output_mini/refkb_index/
```
