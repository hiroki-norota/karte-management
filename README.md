# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
-  has_many :userprofiles

## userprofilesテーブル

|Column|Type|Options|
|------|----|-------|
|record_id|integer||
|name1|string|null: false|
|name2|string|null: false|
|age|integer|string||
|gender|integer||
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

|Column|Type|Options|
|------|----|-------|
|text1|text||
|text2|text||
|image1|text||
|image2|text||
|data|data|null: false|
|userprofile_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :userprofile

## firstvisitsテーブル

|Column|Type|Options|
|------|----|-------|
|concern|text||
|symptom|text||
|onset|string||
|onset_time|string||
|cause|text||
|hope|string||
|medical_treatment|string||
|commuting_hospital|integer||
|disease_name|text||
|medication|text||

|chronic_disease|string||
|chronic_disease_other|text||
|chronic_disease_medication|text||
|allergies|text||
|medical_history|text||
|family_medical_history|text||
|height|integer||
|body_weight|integer||
|normal_heat|text||
|blood_pressure|text||
|treatment_experience|integer||
|treatment_experience_other|string||
|weak_alcohol|integer||
|appetite|integer||
|breakfast|integer||
|lanch_time|integer||
|snack_time|integer||
|dinner_time|integer||
|favorite_food|string||
|hated_food|string||
|fried_food|integer||
|alcohol_intake|integer||
|alcohol_intake_other|string||
|tabacco|integer||

|tabacco_other|string||
|exercise|string||
|time_of_sleeping|text||
|wake_up_time|integer||
|bedtime|integer||
|commuting_time|integer||
|working_hours|integer||
|overtime|integer||
|holiday|integer||
|holiday_other|string||

|head|integer||
|head_other|string||
|face|integer||
|face_other|string||
|eye|integer||
|eye_other|string||
|nose|integer||
|nose_other|string||
|throat|integer||
|throat_other|string||
|mouse|integer||
|mouse_other|string||
|cough|integer||
|cough_other|string||
|sputum|integer||
|sputum_other|string||
|neck|integer||
|neck_other|string||
|shoulder|integer||
|shoulder_other|string||
|arm|integer||
|arm_other|string||
|hand|integer|
|hand_other|string||
|breast|integer||
|breast_other|string||
|stomach|integer||
|stomach_other|string||
|back|integer||
|back_other|string||
|waist|integer||
|waist_other|string||
|thigh|integer||
|thigh_other|string||
|knee|integer||
|knee_other|string||
|leg|integer||
|leg_other|string||
|food|integer||
|food_other|string||
|urine|integer||
|urine_other|string||
|bowei movement|integer||
|bowei movement_other|string||
|sleep|integer||
|sleep_other|string||

|cold|integer||
|sweating|integer||
|no_sweat|integer||
|fat|integer||
|slim|integer||
|heat|integer||
|coldness|integer||
|rain|integer||
|extrovented|integer||
|introvert|integer||
|flexibility|integer||
|nerve|integer||
|nervous|integer||
|frustrated|integer||
|melancholy|integer||
|irritated_scattered|integer||
|sad_prone|integer||
|pregnant|integer||
|menstruation|integer||
|irregular_menstruation|integer||
|physiological_symptoms|integer||
|childbirth_miscarriage|integer||
|physiological_condition|string||
|period|integer||
|blood_color|integer||
|blood_shape|integer||
|blood_volume|integer||
|alotofblood|string||
|remarks|text||
|userprofile_id|integer|null: false, foreign_key: true|

### Association
- has_one :userprofile