.class public Lcom/nuance/swype/input/about/AboutBuilders;
.super Ljava/lang/Object;
.source "AboutBuilders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;,
        Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;,
        Lcom/nuance/swype/input/about/AboutBuilders$URLSpanNoUnderline;
    }
.end annotation


# static fields
.field public static final ABOUT_PREFS_XML:I

.field private static final HEADER_IDS:[I

.field private static final HEADER_STRING_IDS:[I

.field public static final URL_DATA:Ljava/lang/String; = "about_url"

.field private static final URL_IDS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    sget v0, Lcom/nuance/swype/input/R$xml;->about_preferences:I

    sput v0, Lcom/nuance/swype/input/about/AboutBuilders;->ABOUT_PREFS_XML:I

    .line 34
    new-array v0, v6, [I

    sget v1, Lcom/nuance/swype/input/R$id;->website_link_header:I

    aput v1, v0, v2

    sget v1, Lcom/nuance/swype/input/R$id;->twitter_link_header:I

    aput v1, v0, v3

    sget v1, Lcom/nuance/swype/input/R$id;->facebook_link_header:I

    aput v1, v0, v4

    sget v1, Lcom/nuance/swype/input/R$id;->youtube_link_header:I

    aput v1, v0, v5

    sput-object v0, Lcom/nuance/swype/input/about/AboutBuilders;->HEADER_IDS:[I

    .line 41
    new-array v0, v6, [I

    sget v1, Lcom/nuance/swype/input/R$string;->about_header_website:I

    aput v1, v0, v2

    sget v1, Lcom/nuance/swype/input/R$string;->about_header_twitter:I

    aput v1, v0, v3

    sget v1, Lcom/nuance/swype/input/R$string;->about_header_facebook:I

    aput v1, v0, v4

    sget v1, Lcom/nuance/swype/input/R$string;->about_header_youtube:I

    aput v1, v0, v5

    sput-object v0, Lcom/nuance/swype/input/about/AboutBuilders;->HEADER_STRING_IDS:[I

    .line 48
    new-array v0, v6, [I

    sget v1, Lcom/nuance/swype/input/R$id;->website_link:I

    aput v1, v0, v2

    sget v1, Lcom/nuance/swype/input/R$id;->twitter_link:I

    aput v1, v0, v3

    sget v1, Lcom/nuance/swype/input/R$id;->facebook_link:I

    aput v1, v0, v4

    sget v1, Lcom/nuance/swype/input/R$id;->youtube_link:I

    aput v1, v0, v5

    sput-object v0, Lcom/nuance/swype/input/about/AboutBuilders;->URL_IDS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static addClickableSpan(Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 6
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 295
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 296
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 297
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 298
    .local v1, "span":Landroid/text/Spannable;
    new-instance v0, Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;

    invoke-direct {v0, p2}, Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;-><init>(Landroid/view/View$OnClickListener;)V

    .line 299
    .local v0, "clickSpan":Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {v1, v0, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 301
    .end local v0    # "clickSpan":Lcom/nuance/swype/input/about/AboutBuilders$ClickableSpanNoUnderline;
    .end local v1    # "span":Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method public static buildAboutConnect(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 154
    sget v8, Lcom/nuance/swype/input/R$layout;->about_connect:I

    sget v9, Lcom/nuance/swype/input/R$string;->swype:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-static {p0, v8, v9, v10, p1}, Lcom/nuance/swype/input/about/AboutBuilders;->buildView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v6

    .line 157
    .local v6, "view":Landroid/view/View;
    sget v8, Lcom/nuance/swype/input/R$id;->version_content:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    .local v1, "scsdkVersion":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 159
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "version":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .end local v5    # "version":Ljava/lang/String;
    :cond_0
    sget v8, Lcom/nuance/swype/input/R$id;->swyperid_content:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 165
    .local v4, "swyperIdTextView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 166
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect;->getSwyperId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    :try_start_0
    sget v8, Lcom/nuance/swype/input/R$id;->swib_content:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    .local v2, "swibTextView":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    .line 173
    .local v3, "swypeBuildInfo":Lcom/nuance/swype/input/BuildInfo;
    if-eqz v2, :cond_2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "info":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect;->getOemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0    # "info":Ljava/lang/StringBuilder;
    .end local v2    # "swibTextView":Landroid/widget/TextView;
    .end local v3    # "swypeBuildInfo":Lcom/nuance/swype/input/BuildInfo;
    :cond_2
    :goto_0
    sget v8, Lcom/nuance/swype/input/R$id;->website_link:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 184
    .local v7, "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_3

    .line 185
    new-instance v8, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :cond_3
    return-object v6

    .end local v7    # "webLink":Landroid/widget/TextView;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public static buildAboutDragon(Landroid/content/Context;)Landroid/view/View;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 192
    sget v8, Lcom/nuance/swype/input/R$layout;->about_dragon:I

    sget v9, Lcom/nuance/swype/input/R$string;->dragon:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "2.0"

    invoke-static {p0, v8, v9, v10, v11}, Lcom/nuance/swype/input/about/AboutBuilders;->buildView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v6

    .line 195
    .local v6, "view":Landroid/view/View;
    sget v8, Lcom/nuance/swype/input/R$id;->speech_kit_version:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 196
    .local v2, "speechView":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Speech Kit "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nuance/nmdp/speechkit/util/Config;->getNmdpVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "speech_version":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .end local v3    # "speech_version":Ljava/lang/String;
    :cond_0
    sget v8, Lcom/nuance/swype/input/R$id;->nmsp_version:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    .local v0, "nmspView":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 203
    const-string/jumbo v1, "NMSP 5.1 client SDK - build 018"

    .line 204
    .local v1, "nmsp_version":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .end local v1    # "nmsp_version":Ljava/lang/String;
    :cond_1
    sget v8, Lcom/nuance/swype/input/R$id;->uuid:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 208
    .local v4, "textView":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 209
    new-instance v8, Lcom/nuance/nmdp/speechkit/oem/OemConfig;

    invoke-direct {v8, p0}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;-><init>(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v8}, Lcom/nuance/nmdp/speechkit/oem/OemConfig;->uid()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "uuid":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 212
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .end local v5    # "uuid":Ljava/lang/String;
    :cond_2
    sget v8, Lcom/nuance/swype/input/R$id;->website_link:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 217
    .local v7, "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_3

    .line 218
    new-instance v8, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    invoke-direct {v8, v11}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    :cond_3
    sget v8, Lcom/nuance/swype/input/R$id;->twitter_link:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "webLink":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 222
    .restart local v7    # "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_4

    .line 223
    new-instance v8, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    invoke-direct {v8, v11}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_4
    sget v8, Lcom/nuance/swype/input/R$id;->facebook_link:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "webLink":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 227
    .restart local v7    # "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 228
    new-instance v8, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    invoke-direct {v8, v11}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_5
    sget v8, Lcom/nuance/swype/input/R$id;->youtube_link:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "webLink":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 232
    .restart local v7    # "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_6

    .line 233
    new-instance v8, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    invoke-direct {v8, v11}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    :cond_6
    return-object v6
.end method

.method public static buildAboutSwype(Landroid/content/Context;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v13, 0x0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 95
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v2, "swypeVersionStr":Ljava/lang/String;
    sget v10, Lcom/nuance/swype/input/R$layout;->about_swype:I

    sget v11, Lcom/nuance/swype/input/R$string;->swype:I

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11, v2, p1}, Lcom/nuance/swype/input/about/AboutBuilders;->buildView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v6

    .line 104
    .local v6, "view":Landroid/view/View;
    sget v10, Lcom/nuance/swype/input/R$id;->version:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 105
    .local v5, "versionTextView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 107
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "<u>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "</u>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 109
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v10, Lcom/nuance/swype/input/R$id;->xt9_version:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 112
    .local v8, "xt9VersionTextView":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 113
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getXT9CoreVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/input/about/AboutBuilders;->sanitizeVersionNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "version":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, " "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 117
    .end local v4    # "version":Ljava/lang/String;
    :cond_0
    sget v10, Lcom/nuance/swype/input/R$id;->xt9_build_id:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 118
    .local v9, "xt9buildId":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 119
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getXT9CoreBuildId()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "buildId":Ljava/lang/String;
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .end local v0    # "buildId":Ljava/lang/String;
    :cond_1
    sget v10, Lcom/nuance/swype/input/R$id;->t9write_version:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 124
    .local v3, "t9writeVersionTextView":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 125
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getT9WriteAlphaCoreVersion()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/input/about/AboutBuilders;->sanitizeVersionNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .restart local v4    # "version":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, " "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 129
    .end local v4    # "version":Ljava/lang/String;
    :cond_2
    sget v10, Lcom/nuance/swype/input/R$id;->website_link:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 130
    .local v7, "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_3

    .line 131
    new-instance v10, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    invoke-direct {v10, v13}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_3
    sget v10, Lcom/nuance/swype/input/R$id;->twitter_link:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "webLink":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 135
    .restart local v7    # "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_4

    .line 136
    new-instance v10, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    invoke-direct {v10, v13}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_4
    sget v10, Lcom/nuance/swype/input/R$id;->facebook_link:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "webLink":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 140
    .restart local v7    # "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 141
    new-instance v10, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    invoke-direct {v10, v13}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_5
    sget v10, Lcom/nuance/swype/input/R$id;->youtube_link:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "webLink":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 145
    .restart local v7    # "webLink":Landroid/widget/TextView;
    if-eqz v7, :cond_6

    .line 146
    new-instance v10, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;

    invoke-direct {v10, v13}, Lcom/nuance/swype/input/about/AboutBuilders$OnURLClickListener;-><init>(Lcom/nuance/swype/input/about/AboutBuilders$1;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_6
    return-object v6

    .line 96
    .end local v2    # "swypeVersionStr":Ljava/lang/String;
    .end local v3    # "t9writeVersionTextView":Landroid/widget/TextView;
    .end local v5    # "versionTextView":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "webLink":Landroid/widget/TextView;
    .end local v8    # "xt9VersionTextView":Landroid/widget/TextView;
    .end local v9    # "xt9buildId":Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method private static buildView(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "productName"    # Ljava/lang/String;
    .param p3, "versionNumber"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 241
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "view":Landroid/view/View;
    invoke-static {v0, p2}, Lcom/nuance/swype/input/about/AboutBuilders;->updateHeaders(Landroid/view/View;Ljava/lang/String;)V

    .line 243
    invoke-static {v0}, Lcom/nuance/swype/input/about/AboutBuilders;->stripUnderlines(Landroid/view/View;)V

    .line 244
    invoke-static {v0, p3}, Lcom/nuance/swype/input/about/AboutBuilders;->updateVersionNumber(Landroid/view/View;Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method public static fixupAboutPreferences(Landroid/preference/PreferenceScreen;)V
    .locals 7
    .param p0, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 61
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v6, "swype_connect"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 62
    .local v1, "connectPref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 64
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 69
    :cond_0
    :goto_0
    const-string/jumbo v6, "swype_dragon"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 70
    .local v3, "dragonPref":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 71
    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 73
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    :cond_1
    const-string/jumbo v6, "swype_star_trek"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 77
    .local v4, "starTrekPref":Landroid/preference/Preference;
    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildInfo;->isDownloadableThemesEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 78
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 80
    :cond_2
    const-string/jumbo v6, "swype_two_thumbz"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 81
    .local v5, "twoThumbzPref":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildInfo;->isDownloadableThemesEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 82
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_3
    const-string/jumbo v6, "swype_btm"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 85
    .local v0, "btmPref":Landroid/preference/Preference;
    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildInfo;->isDownloadableThemesEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 86
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    :cond_4
    return-void

    .line 66
    .end local v0    # "btmPref":Landroid/preference/Preference;
    .end local v3    # "dragonPref":Landroid/preference/Preference;
    .end local v4    # "starTrekPref":Landroid/preference/Preference;
    .end local v5    # "twoThumbzPref":Landroid/preference/Preference;
    :cond_5
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private static sanitizeVersionNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string/jumbo v1, "V"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 287
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 288
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 290
    .end local p0    # "version":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static stripUnderlines(Landroid/text/Spannable;)V
    .locals 9
    .param p0, "s"    # Landroid/text/Spannable;

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    .line 268
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v4, v5

    .line 269
    .local v1, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 270
    .local v3, "start":I
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 271
    .local v0, "end":I
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 272
    new-instance v2, Lcom/nuance/swype/input/about/AboutBuilders$URLSpanNoUnderline;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/nuance/swype/input/about/AboutBuilders$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 273
    .end local v1    # "span":Landroid/text/style/URLSpan;
    .local v2, "span":Landroid/text/style/URLSpan;
    invoke-interface {p0, v2, v3, v0, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 268
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "end":I
    .end local v2    # "span":Landroid/text/style/URLSpan;
    .end local v3    # "start":I
    :cond_0
    return-void
.end method

.method private static stripUnderlines(Landroid/view/View;)V
    .locals 6
    .param p0, "parent"    # Landroid/view/View;

    .prologue
    .line 258
    sget-object v4, Lcom/nuance/swype/input/about/AboutBuilders;->URL_IDS:[I

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget v0, v4, v3

    .line 259
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 260
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Lcom/nuance/swype/input/about/AboutBuilders;->stripUnderlines(Landroid/text/Spannable;)V

    .line 258
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 264
    .end local v0    # "id":I
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private static updateHeaders(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/nuance/swype/input/about/AboutBuilders;->HEADER_IDS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 250
    sget-object v2, Lcom/nuance/swype/input/about/AboutBuilders;->HEADER_IDS:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 251
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/about/AboutBuilders;->HEADER_STRING_IDS:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private static updateVersionNumber(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "versionNumber"    # Ljava/lang/String;

    .prologue
    .line 278
    sget v1, Lcom/nuance/swype/input/R$id;->version:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    return-void
.end method
