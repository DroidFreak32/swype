.class public Lbolts/AppLinkNavigation;
.super Ljava/lang/Object;
.source "AppLinkNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AppLinkNavigation$NavigationResult;
    }
.end annotation


# static fields
.field private static final KEY_NAME_REFERER_APP_LINK:Ljava/lang/String; = "referer_app_link"

.field private static final KEY_NAME_REFERER_APP_LINK_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_NAME_REFERER_APP_LINK_PACKAGE:Ljava/lang/String; = "package"

.field private static final KEY_NAME_USER_AGENT:Ljava/lang/String; = "user_agent"

.field private static final KEY_NAME_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static defaultResolver:Lbolts/AppLinkResolver;


# instance fields
.field private final appLink:Lbolts/AppLink;

.field private final appLinkData:Landroid/os/Bundle;

.field private final extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lbolts/AppLink;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "appLink"    # Lbolts/AppLink;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "appLinkData"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_e

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "appLink must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_e
    if-nez p2, :cond_15

    .line 95
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 97
    .restart local p2    # "extras":Landroid/os/Bundle;
    :cond_15
    if-nez p3, :cond_1c

    .line 98
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appLinkData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 100
    .restart local p3    # "appLinkData":Landroid/os/Bundle;
    :cond_1c
    iput-object p1, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    .line 101
    iput-object p2, p0, Lbolts/AppLinkNavigation;->extras:Landroid/os/Bundle;

    .line 102
    iput-object p3, p0, Lbolts/AppLinkNavigation;->appLinkData:Landroid/os/Bundle;

    .line 103
    return-void
.end method

.method private buildAppLinkDataForNavigation(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v1, "data":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v2, "refererAppLinkData":Landroid/os/Bundle;
    if-eqz p1, :cond_2c

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "refererAppPackage":Ljava/lang/String;
    if-eqz v4, :cond_18

    .line 143
    const-string/jumbo v5, "package"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 146
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2c

    .line 147
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "refererAppName":Ljava/lang/String;
    if-eqz v3, :cond_2c

    .line 149
    const-string/jumbo v5, "app_name"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "refererAppName":Ljava/lang/String;
    .end local v4    # "refererAppPackage":Ljava/lang/String;
    :cond_2c
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLinkData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 154
    const-string/jumbo v5, "target_url"

    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    move-result-object v6

    invoke-virtual {v6}, Lbolts/AppLink;->getSourceUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v5, "version"

    const-string/jumbo v6, "1.0"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v5, "user_agent"

    const-string/jumbo v6, "Bolts Android 1.4.0"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v5, "referer_app_link"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 158
    const-string/jumbo v5, "extras"

    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    return-object v1
.end method

.method public static getDefaultResolver()Lbolts/AppLinkResolver;
    .registers 1

    .prologue
    .line 359
    sget-object v0, Lbolts/AppLinkNavigation;->defaultResolver:Lbolts/AppLinkResolver;

    return-object v0
.end method

.method private getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 256
    .local v2, "root":Lorg/json/JSONObject;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 259
    .end local v1    # "key":Ljava/lang/String;
    :cond_25
    return-object v2
.end method

.method private getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    instance-of v9, p1, Landroid/os/Bundle;

    if-eqz v9, :cond_b

    .line 167
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lbolts/AppLinkNavigation;->getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 248
    :cond_a
    :goto_a
    return-object v1

    .line 168
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v9, p1, Ljava/lang/CharSequence;

    if-eqz v9, :cond_14

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 170
    :cond_14
    instance-of v9, p1, Ljava/util/List;

    if-eqz v9, :cond_35

    .line 171
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 172
    .local v1, "array":Lorg/json/JSONArray;
    check-cast p1, Ljava/util/List;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 173
    .local v7, "listValue":Ljava/lang/Object;
    invoke-direct {p0, v7}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_23

    .line 176
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "listValue":Ljava/lang/Object;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_35
    instance-of v9, p1, Landroid/util/SparseArray;

    if-eqz v9, :cond_5a

    .line 177
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .restart local v1    # "array":Lorg/json/JSONArray;
    move-object v8, p1

    .line 178
    check-cast v8, Landroid/util/SparseArray;

    .line 179
    .local v8, "sparseValue":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_a

    .line 180
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 183
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v8    # "sparseValue":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    :cond_5a
    instance-of v9, p1, Ljava/lang/Character;

    if-eqz v9, :cond_63

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 185
    :cond_63
    instance-of v9, p1, Ljava/lang/Boolean;

    if-eqz v9, :cond_69

    move-object v1, p1

    .line 186
    goto :goto_a

    .line 187
    :cond_69
    instance-of v9, p1, Ljava/lang/Number;

    if-eqz v9, :cond_8b

    .line 188
    instance-of v9, p1, Ljava/lang/Double;

    if-nez v9, :cond_75

    instance-of v9, p1, Ljava/lang/Float;

    if-eqz v9, :cond_80

    .line 189
    :cond_75
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_a

    .line 191
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_80
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_a

    .line 193
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_8b
    instance-of v9, p1, [Z

    if-eqz v9, :cond_ad

    .line 194
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 195
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [Z

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Z

    .local v0, "arr$":[Z
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_9b
    if-ge v5, v6, :cond_a

    aget-boolean v2, v0, v5

    .line 196
    .local v2, "arrValue":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {p0, v9}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 195
    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    .line 199
    .end local v0    # "arr$":[Z
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":Z
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_ad
    instance-of v9, p1, [C

    if-eqz v9, :cond_cf

    .line 200
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 201
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [C

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [C

    .local v0, "arr$":[C
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_bd
    if-ge v5, v6, :cond_a

    aget-char v2, v0, v5

    .line 202
    .local v2, "arrValue":C
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-direct {p0, v9}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    .line 205
    .end local v0    # "arr$":[C
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":C
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_cf
    instance-of v9, p1, [Ljava/lang/CharSequence;

    if-eqz v9, :cond_ed

    .line 206
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 207
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [Ljava/lang/CharSequence;

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/CharSequence;

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_df
    if-ge v5, v6, :cond_a

    aget-object v2, v0, v5

    .line 208
    .local v2, "arrValue":Ljava/lang/CharSequence;
    invoke-direct {p0, v2}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 207
    add-int/lit8 v5, v5, 0x1

    goto :goto_df

    .line 211
    .end local v0    # "arr$":[Ljava/lang/CharSequence;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":Ljava/lang/CharSequence;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_ed
    instance-of v9, p1, [D

    if-eqz v9, :cond_10f

    .line 212
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 213
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [D

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [D

    .local v0, "arr$":[D
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_fd
    if-ge v5, v6, :cond_a

    aget-wide v2, v0, v5

    .line 214
    .local v2, "arrValue":D
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct {p0, v9}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_fd

    .line 217
    .end local v0    # "arr$":[D
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":D
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_10f
    instance-of v9, p1, [F

    if-eqz v9, :cond_131

    .line 218
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 219
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [F

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [F

    .local v0, "arr$":[F
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_11f
    if-ge v5, v6, :cond_a

    aget v2, v0, v5

    .line 220
    .local v2, "arrValue":F
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {p0, v9}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_11f

    .line 223
    .end local v0    # "arr$":[F
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":F
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_131
    instance-of v9, p1, [I

    if-eqz v9, :cond_153

    .line 224
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 225
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [I

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [I

    .local v0, "arr$":[I
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_141
    if-ge v5, v6, :cond_a

    aget v2, v0, v5

    .line 226
    .local v2, "arrValue":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 225
    add-int/lit8 v5, v5, 0x1

    goto :goto_141

    .line 229
    .end local v0    # "arr$":[I
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_153
    instance-of v9, p1, [J

    if-eqz v9, :cond_175

    .line 230
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 231
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [J

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [J

    .local v0, "arr$":[J
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_163
    if-ge v5, v6, :cond_a

    aget-wide v2, v0, v5

    .line 232
    .local v2, "arrValue":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v9}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 231
    add-int/lit8 v5, v5, 0x1

    goto :goto_163

    .line 235
    .end local v0    # "arr$":[J
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":J
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_175
    instance-of v9, p1, [S

    if-eqz v9, :cond_197

    .line 236
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 237
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [S

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [S

    .local v0, "arr$":[S
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_185
    if-ge v5, v6, :cond_a

    aget-short v2, v0, v5

    .line 238
    .local v2, "arrValue":S
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-direct {p0, v9}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 237
    add-int/lit8 v5, v5, 0x1

    goto :goto_185

    .line 241
    .end local v0    # "arr$":[S
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":S
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_197
    instance-of v9, p1, [Ljava/lang/String;

    if-eqz v9, :cond_1b5

    .line 242
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 243
    .restart local v1    # "array":Lorg/json/JSONArray;
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1a7
    if-ge v5, v6, :cond_a

    aget-object v2, v0, v5

    .line 244
    .local v2, "arrValue":Ljava/lang/String;
    invoke-direct {p0, v2}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a7

    .line 248
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "arrValue":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1b5
    const/4 v1, 0x0

    goto/16 :goto_a
.end method

.method private static getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    invoke-static {}, Lbolts/AppLinkNavigation;->getDefaultResolver()Lbolts/AppLinkResolver;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 364
    invoke-static {}, Lbolts/AppLinkNavigation;->getDefaultResolver()Lbolts/AppLinkResolver;

    move-result-object v0

    .line 366
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lbolts/WebViewAppLinkResolver;

    invoke-direct {v0, p0}, Lbolts/WebViewAppLinkResolver;-><init>(Landroid/content/Context;)V

    goto :goto_a
.end method

.method public static navigate(Landroid/content/Context;Lbolts/AppLink;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appLink"    # Lbolts/AppLink;

    .prologue
    const/4 v1, 0x0

    .line 377
    new-instance v0, Lbolts/AppLinkNavigation;

    invoke-direct {v0, p1, v1, v1}, Lbolts/AppLinkNavigation;-><init>(Lbolts/AppLink;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lbolts/AppLinkNavigation;->navigate(Landroid/content/Context;)Lbolts/AppLinkNavigation$NavigationResult;

    move-result-object v0

    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Landroid/net/Uri;)Lbolts/Task;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destination"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destination"    # Landroid/net/Uri;
    .param p2, "resolver"    # Lbolts/AppLinkResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-interface {p2, p1}, Lbolts/AppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lbolts/AppLinkNavigation$1;

    invoke-direct {v1, p0}, Lbolts/AppLinkNavigation$1;-><init>(Landroid/content/Context;)V

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/lang/String;)Lbolts/Task;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destinationUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Ljava/lang/String;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/lang/String;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destinationUrl"    # Ljava/lang/String;
    .param p2, "resolver"    # Lbolts/AppLinkResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/net/URL;)Lbolts/Task;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destination"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Ljava/net/URL;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/net/URL;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "destination"    # Ljava/net/URL;
    .param p2, "resolver"    # Lbolts/AppLinkResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private sendAppLinkNavigateEventBroadcast(Landroid/content/Context;Landroid/content/Intent;Lbolts/AppLinkNavigation$NavigationResult;Lorg/json/JSONException;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "type"    # Lbolts/AppLinkNavigation$NavigationResult;
    .param p4, "e"    # Lorg/json/JSONException;

    .prologue
    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v0, "extraLoggingData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_11

    .line 327
    const-string/jumbo v1, "error"

    invoke-virtual {p4}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_11
    const-string/jumbo v2, "success"

    invoke-virtual {p3}, Lbolts/AppLinkNavigation$NavigationResult;->isSucceeded()Z

    move-result v1

    if-eqz v1, :cond_31

    const-string/jumbo v1, "1"

    :goto_1d
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v1, "type"

    invoke-virtual {p3}, Lbolts/AppLinkNavigation$NavigationResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v1, "al_nav_out"

    invoke-static {p1, v1, p2, v0}, Lbolts/MeasurementEvent;->sendBroadcastEvent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/util/Map;)V

    .line 338
    return-void

    .line 330
    :cond_31
    const-string/jumbo v1, "0"

    goto :goto_1d
.end method

.method public static setDefaultResolver(Lbolts/AppLinkResolver;)V
    .registers 1
    .param p0, "resolver"    # Lbolts/AppLinkResolver;

    .prologue
    .line 348
    sput-object p0, Lbolts/AppLinkNavigation;->defaultResolver:Lbolts/AppLinkResolver;

    .line 349
    return-void
.end method


# virtual methods
.method public getAppLink()Lbolts/AppLink;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    return-object v0
.end method

.method public getAppLinkData()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lbolts/AppLinkNavigation;->appLinkData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lbolts/AppLinkNavigation;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public navigate(Landroid/content/Context;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 270
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1}, Lbolts/AppLinkNavigation;->buildAppLinkDataForNavigation(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    .line 272
    .local v3, "finalAppLinkData":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 273
    .local v2, "eligibleTargetIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    move-result-object v11

    invoke-virtual {v11}, Lbolts/AppLink;->getTargets()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbolts/AppLink$Target;

    .line 274
    .local v8, "target":Lbolts/AppLink$Target;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v9, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v8}, Lbolts/AppLink$Target;->getUrl()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_6f

    .line 276
    invoke-virtual {v8}, Lbolts/AppLink$Target;->getUrl()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 280
    :goto_36
    invoke-virtual {v8}, Lbolts/AppLink$Target;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v8}, Lbolts/AppLink$Target;->getClassName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4e

    .line 282
    invoke-virtual {v8}, Lbolts/AppLink$Target;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lbolts/AppLink$Target;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    :cond_4e
    const-string/jumbo v11, "al_applink_data"

    invoke-virtual {v9, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 286
    const/high16 v11, 0x10000

    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 287
    if-eqz v11, :cond_15

    .line 288
    move-object v2, v9

    .line 293
    .end local v8    # "target":Lbolts/AppLink$Target;
    .end local v9    # "targetIntent":Landroid/content/Intent;
    :cond_5d
    const/4 v5, 0x0

    .line 294
    .local v5, "outIntent":Landroid/content/Intent;
    sget-object v7, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    .line 295
    .local v7, "result":Lbolts/AppLinkNavigation$NavigationResult;
    if-eqz v2, :cond_79

    .line 296
    move-object v5, v2

    .line 297
    sget-object v7, Lbolts/AppLinkNavigation$NavigationResult;->APP:Lbolts/AppLinkNavigation$NavigationResult;

    .line 317
    :cond_65
    :goto_65
    const/4 v11, 0x0

    invoke-direct {p0, p1, v5, v7, v11}, Lbolts/AppLinkNavigation;->sendAppLinkNavigateEventBroadcast(Landroid/content/Context;Landroid/content/Intent;Lbolts/AppLinkNavigation$NavigationResult;Lorg/json/JSONException;)V

    .line 318
    if-eqz v5, :cond_6e

    .line 319
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    :cond_6e
    return-object v7

    .line 278
    .end local v5    # "outIntent":Landroid/content/Intent;
    .end local v7    # "result":Lbolts/AppLinkNavigation$NavigationResult;
    .restart local v8    # "target":Lbolts/AppLink$Target;
    .restart local v9    # "targetIntent":Landroid/content/Intent;
    :cond_6f
    iget-object v11, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    invoke-virtual {v11}, Lbolts/AppLink;->getSourceUrl()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_36

    .line 300
    .end local v8    # "target":Lbolts/AppLink$Target;
    .end local v9    # "targetIntent":Landroid/content/Intent;
    .restart local v5    # "outIntent":Landroid/content/Intent;
    .restart local v7    # "result":Lbolts/AppLinkNavigation$NavigationResult;
    :cond_79
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    move-result-object v11

    invoke-virtual {v11}, Lbolts/AppLink;->getWebUrl()Landroid/net/Uri;

    move-result-object v10

    .line 301
    .local v10, "webUrl":Landroid/net/Uri;
    if-eqz v10, :cond_65

    .line 304
    :try_start_83
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    :try_end_86
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_86} :catch_a5

    move-result-object v0

    .line 309
    .local v0, "appLinkDataJson":Lorg/json/JSONObject;
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    const-string/jumbo v12, "al_applink_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 312
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "outIntent":Landroid/content/Intent;
    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-direct {v5, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 313
    .restart local v5    # "outIntent":Landroid/content/Intent;
    sget-object v7, Lbolts/AppLinkNavigation$NavigationResult;->WEB:Lbolts/AppLinkNavigation$NavigationResult;

    goto :goto_65

    .line 305
    .end local v0    # "appLinkDataJson":Lorg/json/JSONObject;
    :catch_a5
    move-exception v1

    .line 306
    .local v1, "e":Lorg/json/JSONException;
    const/4 v11, 0x0

    sget-object v12, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    invoke-direct {p0, p1, v11, v12, v1}, Lbolts/AppLinkNavigation;->sendAppLinkNavigateEventBroadcast(Landroid/content/Context;Landroid/content/Intent;Lbolts/AppLinkNavigation$NavigationResult;Lorg/json/JSONException;)V

    .line 307
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method
