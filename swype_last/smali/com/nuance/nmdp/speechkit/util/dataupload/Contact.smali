.class public Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field private _company:Ljava/lang/String;

.field private _firstname:Ljava/lang/String;

.field private _firstname_phonetic:Ljava/lang/String;

.field private _fullname:Ljava/lang/String;

.field private _lastname:Ljava/lang/String;

.field private _lastname_phonetic:Ljava/lang/String;

.field private _middlename:Ljava/lang/String;

.field private _middlename_phonetic:Ljava/lang/String;

.field private _nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "firstname"    # Ljava/lang/String;
    .param p2, "middlename"    # Ljava/lang/String;
    .param p3, "lastname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public clearData()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    .line 187
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public getCheckSum()I
    .registers 3

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, "checksum":I
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 119
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 120
    :cond_d
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 121
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_18
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 123
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_23
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 125
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_2e
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 127
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_39
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 129
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_44
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 131
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_4f
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_5a

    .line 133
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_5a
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 135
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_65
    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    return-object v0
.end method

.method getContactDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .registers 4

    .prologue
    .line 209
    new-instance v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    .line 211
    .local v0, "dict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 213
    const-string/jumbo v1, "full_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_11
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 218
    const-string/jumbo v1, "first_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1d
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 223
    const-string/jumbo v1, "first_name_phonetic"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_29
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 228
    const-string/jumbo v1, "last_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_35
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 233
    const-string/jumbo v1, "last_name_phonetic"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_41
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 238
    const-string/jumbo v1, "nick_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_4d
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    if-eqz v1, :cond_59

    .line 243
    const-string/jumbo v1, "middle_name"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_59
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 248
    const-string/jumbo v1, "middle_name_phonetic"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_65
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 253
    const-string/jumbo v1, "company"

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_71
    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstNamePhonetic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    return-object v0
.end method

.method public getLastNamePhonetic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleNamePhonetic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public setCompany(Ljava/lang/String;)V
    .registers 2
    .param p1, "company"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setFirstNamePhonetic(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLastNamePhonetic(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMiddleNamePhonetic(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    .local v0, "contact":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "firstname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    :cond_25
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_45

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "firstname_phonetic:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_firstname_phonetic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :cond_45
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "middlename:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_65
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_85

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "middlename_phonetic:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_middlename_phonetic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    :cond_85
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    if-eqz v1, :cond_a5

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lastname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_a5
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    if-eqz v1, :cond_c5

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lastname_phonetic:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_lastname_phonetic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    :cond_c5
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    if-eqz v1, :cond_e5

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fullname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_fullname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :cond_e5
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    if-eqz v1, :cond_105

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nickname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_105
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    if-eqz v1, :cond_125

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "company:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->_company:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    :cond_125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
