# DB設計

## usersテーブル

｜Colimn｜Type｜Options｜
｜------｜----｜-------｜
|name|string|null: unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
-  has_many :userprofiles

## userprofilesテーブル

｜Colimn｜Type｜Options｜
｜------｜----｜-------｜
|record_id|integer||
|name|string|null: false|
|name2|string|null: false|
|age|integer|string||
|gender|string||
|birthday|integer||
|address1|string||
|address2|string||
|phonenumber1|integer||
|phonenumber2|integer||
|phonenumber3|integer||
|phonenumber4|integer||
|mail|string||
|business|string||
|remarks|text||
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :medicalrecords
- has_one :firstvisit

## medicalrecordsテーブル

｜Colimn｜Type｜Options｜
｜------｜----｜-------｜
|text1|text||
|text2|text||
|image1|text||
|image2|text||
|data|data|null: false|
|userprofile_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :userprofile

## firstvisitsテーブル

｜Colimn｜Type｜Options｜
｜------｜----｜-------｜
|concern|text||
|symptom|text||
|onset|text||
|onset_time|text||
|cause|text||
|hope|text||
|medical_treatment|text||
|commuting_to_hospital|text||
|disease_name|text||
|medication||text||
|chronic_disease|text||
|chronic_disease_other|text||
|chronic_disease_medication|text||
|allergies|text||
|medical_history|text||
|family_medical_history|text||
|height|integer||
|body_weight|integer||
|normal_heat|text||
|blood_pressure|text||
|treatment_experience|text||
|weak_alcohol|text||
|appetite|text||
|breakfast|integer||
|lanch_time|integer||
|snack_time|integer||
|dinner_time|integer||
|favorite_food|text||
|hated_food|text||
|fried_food|text||
|alcohol_intake|text||
|tabacco|text||
|exercise|text||
|time_of_sleeping|text||
|wake_up_time|integer||
|bedtime|integer||
|commuting_time|integer||
|working_hours|integer||
|overtime|integer||
|holiday|text||
|head|text||
|face|text||
|eye|text||
|nose|text||
|throat|text||
|mouse|text||
|cough|text||
|sputum|text||
|neck|text||
|shoulder|text||
|arm|text||
|hand|text||
|breast|text||
|stomach|text||
|back|text||
|waist|text|||text||
|thigh|text||
|knee|text||
|leg|text||
|food|text||
|urine|text||
|bowei movement|text||
|sleep|text||
|cold|text||
|sweating|text||
|no_sweat|text||
|fat|text||
|slim|text||
|heat|text||
|coldness|text||
|rain|text||
|extrovented|text||
|introvert|text||
|flexibility|text||
|nerve|text||
|nervous|text||
|frustrated|text||
|melancholy|text||
|irritated_and_scattered|text||
|sad_and_prone|text||
|pregnant|text||
|menstruation|text||
|irregular_menstruation|text||
|physiological_symptoms|text||
|childbirth/miscarriage|text||
|physiological_condition|text||
|period|text||
|blood_color|text||
|blood_shape|text||
|blood_volume|text||
|a_lot_of_blood|text||
|remarks|text||
|userprofile_id|integer|null: false, foreign_key: true|

### Association
- has_one :userprofile