.class public Lcom/fsck/k9/Account;
.super Ljava/lang/Object;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/Account$Searchable;,
        Lcom/fsck/k9/Account$ShowPictures;,
        Lcom/fsck/k9/Account$HideButtons;,
        Lcom/fsck/k9/Account$FolderMode;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUOTE_PREFIX:Ljava/lang/String; = ">"

.field private static final DEFAULT_REPLY_AFTER_QUOTE:Z = false

.field public static final DELETE_POLICY_7DAYS:I = 0x1

.field public static final DELETE_POLICY_MARK_AS_READ:I = 0x3

.field public static final DELETE_POLICY_NEVER:I = 0x0

.field public static final DELETE_POLICY_ON_DELETE:I = 0x2

.field public static final EXPUNGE_IMMEDIATELY:Ljava/lang/String; = "EXPUNGE_IMMEDIATELY"

.field public static final EXPUNGE_MANUALLY:Ljava/lang/String; = "EXPUNGE_MANUALLY"

.field public static final EXPUNGE_ON_POLL:Ljava/lang/String; = "EXPUNGE_ON_POLL"

.field public static final TYPE_MOBILE:Ljava/lang/String; = "MOBILE"

.field public static final TYPE_OTHER:Ljava/lang/String; = "OTHER"

.field public static final TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field private static final networkTypes:[Ljava/lang/String;


# instance fields
.field private final compressionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private goToUnreadMessageSearch:Z

.field private identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private lastSelectedFolderName:Ljava/lang/String;

.field private mAccountNumber:I

.field private mAlwaysBcc:Ljava/lang/String;

.field private mArchiveFolderName:Ljava/lang/String;

.field private mAutoExpandFolderName:Ljava/lang/String;

.field private mAutomaticCheckIntervalMinutes:I

.field private mChipColor:I

.field private mCryptoApp:Ljava/lang/String;

.field private mCryptoAutoSignature:Z

.field private mCryptoProvider$45ec793c:Landroid/support/v4/app/LoaderManager;

.field private mDeletePolicy:I

.field private mDescription:Ljava/lang/String;

.field private mDisplayCount:I

.field private mDraftsFolderName:Ljava/lang/String;

.field private mEnableMoveButtons:Z

.field private mExpungePolicy:Ljava/lang/String;

.field private mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

.field private mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

.field private mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

.field private mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

.field private mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

.field private mHideMessageViewMoveButtons:Lcom/fsck/k9/Account$HideButtons;

.field private mIdleRefreshMinutes:I

.field private final mIsInUse:Z

.field private mIsSignatureBeforeQuotedText:Z

.field private mLastAutomaticCheckTime:J

.field private mLocalStorageProviderId:Ljava/lang/String;

.field private mMaxPushFolders:I

.field private mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

.field private mNotifyNewMail:Z

.field private mNotifySelfNewMail:Z

.field private mNotifySync:Z

.field private mOutboxFolderName:Ljava/lang/String;

.field private mPushPollOnConnect:Z

.field private mQuotePrefix:Ljava/lang/String;

.field private mReplyAfterQuote:Z

.field private mRingNotified:Z

.field private mSaveAllHeaders:Z

.field private mSentFolderName:Ljava/lang/String;

.field private mShowPictures:Lcom/fsck/k9/Account$ShowPictures;

.field private mSpamFolderName:Ljava/lang/String;

.field private mStoreUri:Ljava/lang/String;

.field private mSyncRemoteDeletions:Z

.field private mTransportUri:Ljava/lang/String;

.field private mTrashFolderName:Ljava/lang/String;

.field private final mUuid:Ljava/lang/String;

.field private maximumAutoDownloadMessageSize:I

.field private maximumPolledMessageAge:I

.field private searchableFolders:Lcom/fsck/k9/Account$Searchable;

.field private subscribedFoldersOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MOBILE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OTHER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fsck/k9/Account;->networkTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v3, p0, Lcom/fsck/k9/Account;->mIsInUse:Z

    .line 109
    const-string v1, "EXPUNGE_IMMEDIATELY"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    .line 113
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    .line 127
    iput-object v2, p0, Lcom/fsck/k9/Account;->mCryptoProvider$45ec793c:Landroid/support/v4/app/LoaderManager;

    .line 135
    iput-object v2, p0, Lcom/fsck/k9/Account;->lastSelectedFolderName:Ljava/lang/String;

    .line 139
    new-instance v1, Lcom/fsck/k9/NotificationSetting;

    invoke-direct {v1}, Lcom/fsck/k9/NotificationSetting;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    .line 163
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    .line 164
    iput-object v2, p0, Lcom/fsck/k9/Account;->mLocalStorageProviderId:Ljava/lang/String;

    .line 165
    iput v5, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    .line 166
    const/16 v1, 0x18

    iput v1, p0, Lcom/fsck/k9/Account;->mIdleRefreshMinutes:I

    .line 167
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mSaveAllHeaders:Z

    .line 168
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mPushPollOnConnect:Z

    .line 169
    sget v1, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    iput v1, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    .line 170
    iput v5, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    .line 171
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z

    .line 172
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mNotifySync:Z

    .line 173
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z

    .line 174
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    .line 175
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    .line 176
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    .line 177
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    .line 178
    sget-object v1, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

    .line 179
    sget-object v1, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mHideMessageViewMoveButtons:Lcom/fsck/k9/Account$HideButtons;

    .line 180
    sget-object v1, Lcom/fsck/k9/Account$ShowPictures;->NEVER:Lcom/fsck/k9/Account$ShowPictures;

    iput-object v1, p0, Lcom/fsck/k9/Account;->mShowPictures:Lcom/fsck/k9/Account$ShowPictures;

    .line 181
    iput-boolean v3, p0, Lcom/fsck/k9/Account;->mEnableMoveButtons:Z

    .line 182
    iput-boolean v3, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z

    .line 183
    const-string v1, "EXPUNGE_IMMEDIATELY"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    .line 184
    const-string v1, "INBOX"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;

    .line 185
    const/16 v1, 0xa

    iput v1, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    .line 186
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/high16 v2, -0x1000000

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fsck/k9/Account;->mChipColor:I

    .line 187
    iput-boolean v3, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z

    .line 188
    iput-boolean v3, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z

    .line 189
    iput v5, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I

    .line 190
    const v1, 0x8000

    iput v1, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I

    .line 191
    const-string v1, ">"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mQuotePrefix:Ljava/lang/String;

    .line 192
    iput-boolean v3, p0, Lcom/fsck/k9/Account;->mReplyAfterQuote:Z

    .line 193
    iput-boolean v4, p0, Lcom/fsck/k9/Account;->mSyncRemoteDeletions:Z

    .line 194
    const-string v1, "apg"

    iput-object v1, p0, Lcom/fsck/k9/Account;->mCryptoApp:Ljava/lang/String;

    .line 195
    iput-boolean v3, p0, Lcom/fsck/k9/Account;->mCryptoAutoSignature:Z

    .line 197
    sget-object v1, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    iput-object v1, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    .line 201
    new-instance v0, Lcom/fsck/k9/Identity;

    invoke-direct {v0}, Lcom/fsck/k9/Identity;-><init>()V

    .line 202
    .local v0, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v0, v4}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 205
    iget-object v1, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v1, Lcom/fsck/k9/NotificationSetting;

    invoke-direct {v1}, Lcom/fsck/k9/NotificationSetting;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    .line 208
    iget-object v1, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/NotificationSetting;->setVibrate(Z)V

    .line 209
    iget-object v1, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v1, v3}, Lcom/fsck/k9/NotificationSetting;->setVibratePattern(I)V

    .line 210
    iget-object v1, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/fsck/k9/NotificationSetting;->setVibrateTimes(I)V

    .line 211
    iget-object v1, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v1, v4}, Lcom/fsck/k9/NotificationSetting;->setRing(Z)V

    .line 212
    iget-object v1, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    const-string v2, "content://settings/system/notification_sound"

    invoke-virtual {v1, v2}, Lcom/fsck/k9/NotificationSetting;->setRingtone(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    iget v2, p0, Lcom/fsck/k9/Account;->mChipColor:I

    invoke-virtual {v1, v2}, Lcom/fsck/k9/NotificationSetting;->setLedColor(I)V

    .line 214
    return-void
.end method

.method protected constructor <init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/Account;->mIsInUse:Z

    .line 109
    const-string v0, "EXPUNGE_IMMEDIATELY"

    iput-object v0, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    .line 127
    iput-object v1, p0, Lcom/fsck/k9/Account;->mCryptoProvider$45ec793c:Landroid/support/v4/app/LoaderManager;

    .line 135
    iput-object v1, p0, Lcom/fsck/k9/Account;->lastSelectedFolderName:Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/fsck/k9/NotificationSetting;

    invoke-direct {v0}, Lcom/fsck/k9/NotificationSetting;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    .line 218
    iput-object p2, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    .line 219
    invoke-direct {p0, p1}, Lcom/fsck/k9/Account;->loadAccount(Lcom/fsck/k9/Preferences;)V

    .line 220
    return-void
.end method

.method private declared-synchronized deleteIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1236
    monitor-enter p0

    const/4 v1, 0x0

    .line 1237
    .local v1, "ident":I
    const/4 v0, 0x0

    .line 1240
    .local v0, "gotOne":Z
    :cond_0
    const/4 v0, 0x0

    .line 1241
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".email."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    if-eqz v2, :cond_1

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".name."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".email."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".signatureUse."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".description."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".replyTo."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    const/4 v0, 0x1

    .line 1252
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1254
    if-nez v0, :cond_0

    .line 1255
    monitor-exit p0

    return-void

    .line 1236
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized loadAccount(Lcom/fsck/k9/Preferences;)V
    .locals 12
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 230
    .local v3, "prefs":Landroid/content/SharedPreferences;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".storeUri"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/helper/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mStoreUri:Ljava/lang/String;

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".localStorageProvider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v8}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/mail/store/StorageManager;->getDefaultProviderId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mLocalStorageProviderId:Ljava/lang/String;

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".transportUri"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/helper/Utility;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mTransportUri:Ljava/lang/String;

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".description"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;

    .line 236
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".alwaysBcc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".automaticCheckIntervalMinutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".idleRefreshMinutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x18

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->mIdleRefreshMinutes:I

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".saveAllHeaders"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mSaveAllHeaders:Z

    .line 243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pushPollOnConnect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mPushPollOnConnect:Z

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".displayCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    .line 246
    iget v7, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    if-gez v7, :cond_0

    .line 248
    sget v7, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    iput v7, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    .line 250
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lastAutomaticCheckTime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/fsck/k9/Account;->mLastAutomaticCheckTime:J

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".notifyNewMail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".notifySelfNewMail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".notifyMailCheck"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mNotifySync:Z

    .line 258
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".deletePolicy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->mDeletePolicy:I

    .line 259
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".draftsFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Drafts"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    .line 261
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".sentFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sent"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".trashFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Trash"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    .line 265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".archiveFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Archive"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mArchiveFolderName:Ljava/lang/String;

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".spamFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Spam"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mSpamFolderName:Ljava/lang/String;

    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".outboxFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Outbox"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".expungePolicy"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EXPUNGE_IMMEDIATELY"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".syncRemoteDeletions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mSyncRemoteDeletions:Z

    .line 274
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".maxPushFolders"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".goToUnreadMessageSearch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z

    .line 277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".subscribedFoldersOnly"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".maximumPolledMessageAge"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".maximumAutoDownloadMessageSize"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x8000

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I

    .line 283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".quotePrefix"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ">"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mQuotePrefix:Ljava/lang/String;

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".replyAfterQuote"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mReplyAfterQuote:Z

    .line 285
    sget-object v0, Lcom/fsck/k9/Account;->networkTypes:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 287
    .local v5, "type":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".useCompression."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 289
    .local v6, "useCompression":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "useCompression":Ljava/lang/Boolean;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".autoExpandFolderName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "INBOX"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".accountNumber"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    .line 297
    new-instance v4, Ljava/util/Random;

    iget v7, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    int-to-long v8, v7

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    invoke-direct {v4, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 299
    .local v4, "random":Ljava/util/Random;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".chipColor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x70

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    const/16 v9, 0x70

    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    mul-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    const/16 v9, 0x70

    invoke-virtual {v4, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    const v10, 0xffff

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    const/high16 v9, -0x1000000

    add-int/2addr v8, v9

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/fsck/k9/Account;->mChipColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".hideButtonsEnum"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    invoke-virtual {v8}, Lcom/fsck/k9/Account$HideButtons;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Account$HideButtons;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$HideButtons;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".hideMoveButtonsEnum"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    invoke-virtual {v8}, Lcom/fsck/k9/Account$HideButtons;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Account$HideButtons;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$HideButtons;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mHideMessageViewMoveButtons:Lcom/fsck/k9/Account$HideButtons;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    :goto_2
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".showPicturesEnum"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/Account$ShowPictures;->NEVER:Lcom/fsck/k9/Account$ShowPictures;

    invoke-virtual {v8}, Lcom/fsck/k9/Account$ShowPictures;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Account$ShowPictures;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$ShowPictures;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mShowPictures:Lcom/fsck/k9/Account$ShowPictures;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 335
    :goto_3
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".enableMoveButtons"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mEnableMoveButtons:Z

    .line 337
    iget-object v7, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".vibrate"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/NotificationSetting;->setVibrate(Z)V

    .line 338
    iget-object v7, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".vibratePattern"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/NotificationSetting;->setVibratePattern(I)V

    .line 339
    iget-object v7, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".vibrateTimes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/NotificationSetting;->setVibrateTimes(I)V

    .line 340
    iget-object v7, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".ring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/NotificationSetting;->setRing(Z)V

    .line 341
    iget-object v7, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".ringtone"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "content://settings/system/notification_sound"

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/NotificationSetting;->setRingtone(Ljava/lang/String;)V

    .line 343
    iget-object v7, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".led"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/NotificationSetting;->setLed(Z)V

    .line 344
    iget-object v7, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".ledColor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/fsck/k9/Account;->mChipColor:I

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/fsck/k9/NotificationSetting;->setLedColor(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".folderDisplayMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v8}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    :goto_4
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".folderSyncMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v8}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 368
    :goto_5
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".folderPushMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v8}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 378
    :goto_6
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".folderTargetMode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v8}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Account$FolderMode;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$FolderMode;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 388
    :goto_7
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".searchableFolders"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v8}, Lcom/fsck/k9/Account$Searchable;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fsck/k9/Account$Searchable;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/Account$Searchable;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 396
    :goto_8
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".signatureBeforeQuotedText"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z

    .line 397
    invoke-direct {p0, v3}, Lcom/fsck/k9/Account;->loadIdentities(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cryptoApp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "apg"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fsck/k9/Account;->mCryptoApp:Ljava/lang/String;

    .line 400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".cryptoAutoSignature"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/fsck/k9/Account;->mCryptoAutoSignature:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 312
    :catch_0
    move-exception v7

    :try_start_b
    sget-object v7, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    iput-object v7, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 228
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "random":Ljava/util/Random;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 322
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "random":Ljava/util/Random;
    :catch_1
    move-exception v7

    :try_start_c
    sget-object v7, Lcom/fsck/k9/Account$HideButtons;->NEVER:Lcom/fsck/k9/Account$HideButtons;

    iput-object v7, p0, Lcom/fsck/k9/Account;->mHideMessageViewMoveButtons:Lcom/fsck/k9/Account$HideButtons;

    goto/16 :goto_2

    .line 332
    :catch_2
    move-exception v7

    sget-object v7, Lcom/fsck/k9/Account$ShowPictures;->NEVER:Lcom/fsck/k9/Account$ShowPictures;

    iput-object v7, p0, Lcom/fsck/k9/Account;->mShowPictures:Lcom/fsck/k9/Account$ShowPictures;

    goto/16 :goto_3

    .line 353
    :catch_3
    move-exception v7

    sget-object v7, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v7, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    goto/16 :goto_4

    .line 363
    :catch_4
    move-exception v7

    sget-object v7, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v7, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    goto/16 :goto_5

    .line 373
    :catch_5
    move-exception v7

    sget-object v7, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v7, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    goto/16 :goto_6

    .line 383
    :catch_6
    move-exception v7

    sget-object v7, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    iput-object v7, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    goto/16 :goto_7

    .line 393
    :catch_7
    move-exception v7

    sget-object v7, Lcom/fsck/k9/Account$Searchable;->ALL:Lcom/fsck/k9/Account$Searchable;

    iput-object v7, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_8
.end method

.method private declared-synchronized loadIdentities(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 12
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1188
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v6, "newIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    const/4 v3, 0x0

    .line 1190
    .local v3, "ident":I
    const/4 v2, 0x0

    .line 1193
    .local v2, "gotOne":Z
    :cond_0
    const/4 v2, 0x0

    .line 1194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".name."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1195
    .local v5, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".email."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "email":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signatureUse."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1197
    .local v9, "signatureUse":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signature."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1198
    .local v8, "signature":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".description."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "description":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".replyTo."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1200
    .local v7, "replyTo":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1202
    new-instance v4, Lcom/fsck/k9/Identity;

    invoke-direct {v4}, Lcom/fsck/k9/Identity;-><init>()V

    .line 1203
    .local v4, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v4, v5}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v4, v1}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v4, v9}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 1206
    invoke-virtual {v4, v8}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {v4, v0}, Lcom/fsck/k9/Identity;->setDescription(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v4, v7}, Lcom/fsck/k9/Identity;->setReplyTo(Ljava/lang/String;)V

    .line 1209
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    const/4 v2, 0x1

    .line 1212
    .end local v4    # "identity":Lcom/fsck/k9/Identity;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1214
    if-nez v2, :cond_0

    .line 1216
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 1218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".email"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1220
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signatureUse"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1221
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signature"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1222
    new-instance v4, Lcom/fsck/k9/Identity;

    invoke-direct {v4}, Lcom/fsck/k9/Identity;-><init>()V

    .line 1223
    .restart local v4    # "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v4, v5}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v4, v1}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v4, v9}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 1226
    invoke-virtual {v4, v8}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v4, v1}, Lcom/fsck/k9/Identity;->setDescription(Ljava/lang/String;)V

    .line 1228
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    .end local v4    # "identity":Lcom/fsck/k9/Identity;
    :cond_2
    monitor-exit p0

    return-object v6

    .line 1188
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "gotOne":Z
    .end local v3    # "ident":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "newIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    .end local v7    # "replyTo":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    .end local v9    # "signatureUse":Z
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private declared-synchronized saveIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1259
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/Account;->deleteIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 1260
    const/4 v1, 0x0

    .line 1262
    .local v1, "ident":I
    iget-object v3, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/Identity;

    .line 1264
    .local v2, "identity":Lcom/fsck/k9/Identity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".email."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signatureUse."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getSignatureUse()Z

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".signature."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".description."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".replyTo."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getReplyTo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1270
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1272
    .end local v2    # "identity":Lcom/fsck/k9/Identity;
    :cond_0
    monitor-exit p0

    return-void

    .line 1259
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ident":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method protected declared-synchronized delete(Lcom/fsck/k9/Preferences;)V
    .locals 13
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "accountUuids"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 407
    .local v9, "uuids":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v7, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v6, v9

    .local v6, "length":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 410
    aget-object v10, v9, v3

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 412
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 414
    const/16 v10, 0x2c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    :cond_0
    aget-object v10, v9, v3

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "accountUuids":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 421
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "accountUuids"

    invoke-interface {v2, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".storeUri"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".localStoreUri"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".transportUri"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".description"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".email"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".alwaysBcc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 430
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".automaticCheckIntervalMinutes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".pushPollOnConnect"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 432
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".saveAllHeaders"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".idleRefreshMinutes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".lastAutomaticCheckTime"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".notifyNewMail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 436
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".notifySelfNewMail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 437
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".deletePolicy"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 438
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".draftsFolderName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 439
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".sentFolderName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".trashFolderName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".archiveFolderName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".spamFolderName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".outboxFolderName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 444
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".autoExpandFolderName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".accountNumber"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 446
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".vibrate"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".vibratePattern"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 448
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".vibrateTimes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 449
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ringtone"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 451
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".lastFullSync"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".folderDisplayMode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".folderSyncMode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".folderPushMode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 455
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".folderTargetMode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".hideButtonsEnum"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".signatureBeforeQuotedText"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".expungePolicy"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 459
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".syncRemoteDeletions"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".maxPushFolders"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 461
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".searchableFolders"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".chipColor"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".led"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ledColor"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".goToUnreadMessageSearch"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 466
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".subscribedFoldersOnly"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 467
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".maximumPolledMessageAge"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 468
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".maximumAutoDownloadMessageSize"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 469
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".quotePrefix"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".showPicturesEnum"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".replyAfterQuote"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 472
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".cryptoApp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 473
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".cryptoAutoSignature"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".enableMoveButtons"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 475
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".hideMoveButtonsEnum"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    sget-object v1, Lcom/fsck/k9/Account;->networkTypes:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v1, v4

    .line 478
    .local v8, "type":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".useCompression."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 480
    .end local v8    # "type":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-direct {p0, v10, v2}, Lcom/fsck/k9/Account;->deleteIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 481
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 406
    .end local v0    # "accountUuids":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "length":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v9    # "uuids":[Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1172
    instance-of v0, p1, Lcom/fsck/k9/Account;

    if-eqz v0, :cond_0

    .line 1174
    check-cast p1, Lcom/fsck/k9/Account;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1176
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;
    .locals 4
    .param p1, "addr"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 1317
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/Identity;

    .line 1319
    .local v2, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 1320
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1325
    .end local v0    # "email":Ljava/lang/String;
    .end local v2    # "identity":Lcom/fsck/k9/Identity;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1317
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getAccountNumber()I
    .locals 1

    .prologue
    .line 979
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mAccountNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlwaysBcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getArchiveFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mArchiveFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoExpandFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 969
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutomaticCheckIntervalMinutes()I
    .locals 1

    .prologue
    .line 840
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChipColor()I
    .locals 1

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mChipColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://accounts/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCryptoApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/fsck/k9/Account;->mCryptoApp:Ljava/lang/String;

    return-object v0
.end method

.method public getCryptoAutoSignature()Z
    .locals 1

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mCryptoAutoSignature:Z

    return v0
.end method

.method public declared-synchronized getCryptoProvider$9ba7365()Landroid/support/v4/app/LoaderManager;
    .locals 2

    .prologue
    .line 1546
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mCryptoProvider$45ec793c:Landroid/support/v4/app/LoaderManager;

    if-nez v0, :cond_0

    .line 1548
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getCryptoApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fsck/k9/crypto/Apg;->createInstance()Lcom/fsck/k9/crypto/Apg;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fsck/k9/Account;->mCryptoProvider$45ec793c:Landroid/support/v4/app/LoaderManager;

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mCryptoProvider$45ec793c:Landroid/support/v4/app/LoaderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1548
    :cond_1
    :try_start_1
    new-instance v0, Lcom/fsck/k9/crypto/None;

    invoke-direct {v0}, Lcom/fsck/k9/crypto/None;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeletePolicy()I
    .locals 1

    .prologue
    .line 894
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mDeletePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayCount()I
    .locals 1

    .prologue
    .line 856
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mDisplayCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDraftsFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEarliestPollDate()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1429
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getMaximumPolledMessageAge()I

    move-result v0

    .line 1430
    .local v0, "age":I
    if-ltz v0, :cond_1

    .line 1432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1433
    .local v1, "now":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1434
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1435
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1436
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1437
    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    .line 1439
    const/4 v2, 0x5

    mul-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1460
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1464
    .end local v1    # "now":Ljava/util/Calendar;
    :goto_1
    return-object v2

    .line 1441
    .restart local v1    # "now":Ljava/util/Calendar;
    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1444
    :sswitch_0
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1447
    :sswitch_1
    const/4 v2, -0x2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1450
    :sswitch_2
    const/4 v2, -0x3

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1453
    :sswitch_3
    const/4 v2, -0x6

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1456
    :sswitch_4
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 1464
    .end local v1    # "now":Ljava/util/Calendar;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1441
    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x38 -> :sswitch_1
        0x54 -> :sswitch_2
        0xa8 -> :sswitch_3
        0x16d -> :sswitch_4
    .end sparse-switch
.end method

.method public declared-synchronized getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 767
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnableMoveButtons()Z
    .locals 1

    .prologue
    .line 1490
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mEnableMoveButtons:Z

    return v0
.end method

.method public declared-synchronized getErrorFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/fsck/k9/K9;->ERROR_FOLDER_NAME:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExpungePolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 984
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderPushMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 1017
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderSyncMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFolderTargetMode()Lcom/fsck/k9/Account$FolderMode;
    .locals 1

    .prologue
    .line 1070
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHideMessageViewButtons()Lcom/fsck/k9/Account$HideButtons;
    .locals 1

    .prologue
    .line 1040
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHideMessageViewMoveButtons()Lcom/fsck/k9/Account$HideButtons;
    .locals 1

    .prologue
    .line 1050
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mHideMessageViewMoveButtons:Lcom/fsck/k9/Account$HideButtons;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIdentities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIdentity(I)Lcom/fsck/k9/Identity;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIdleRefreshMinutes()I
    .locals 1

    .prologue
    .line 1340
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mIdleRefreshMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastAutomaticCheckTime()J
    .locals 2

    .prologue
    .line 874
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/fsck/k9/Account;->mLastAutomaticCheckTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSelectedFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->lastSelectedFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalStorageProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/fsck/k9/Account;->mLocalStorageProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1122
    sget-object v0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {p0, v0}, Lcom/fsck/k9/mail/Store;->getLocalInstance(Lcom/fsck/k9/Account;Landroid/app/Application;)Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMaxPushFolders()I
    .locals 1

    .prologue
    .line 1110
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumAutoDownloadMessageSize()I
    .locals 1

    .prologue
    .line 1419
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumPolledMessageAge()I
    .locals 1

    .prologue
    .line 1409
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNotificationSetting()Lcom/fsck/k9/NotificationSetting;
    .locals 1

    .prologue
    .line 1555
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutboxFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQuotePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mQuotePrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteStore()Lcom/fsck/k9/mail/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-static {p0}, Lcom/fsck/k9/mail/Store;->getRemoteInstance(Lcom/fsck/k9/Account;)Lcom/fsck/k9/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSearchableFolders()Lcom/fsck/k9/Account$Searchable;
    .locals 1

    .prologue
    .line 1330
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSentFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowPictures()Lcom/fsck/k9/Account$ShowPictures;
    .locals 1

    .prologue
    .line 1060
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mShowPictures:Lcom/fsck/k9/Account$ShowPictures;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 757
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getSignature()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignatureUse()Z
    .locals 2

    .prologue
    .line 747
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0}, Lcom/fsck/k9/Identity;->getSignatureUse()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpamFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mSpamFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual/range {p0 .. p1}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 615
    const/16 v22, 0x0

    .line 680
    :cond_0
    :goto_0
    return-object v22

    .line 617
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 618
    .local v20, "startTime":J
    new-instance v22, Lcom/fsck/k9/AccountStats;

    invoke-direct/range {v22 .. v22}, Lcom/fsck/k9/AccountStats;-><init>()V

    .line 619
    .local v22, "stats":Lcom/fsck/k9/AccountStats;
    const/16 v23, 0x0

    .line 620
    .local v23, "unreadMessageCount":I
    const/4 v8, 0x0

    .line 621
    .local v8, "flaggedMessageCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v18

    .line 622
    .local v18, "localStore":Lcom/fsck/k9/mail/store/LocalStore;
    invoke-static {}, Lcom/fsck/k9/K9;->measureAccounts()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 624
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/fsck/k9/AccountStats;->size:J

    .line 626
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v4

    .line 627
    .local v4, "aMode":Lcom/fsck/k9/Account$FolderMode;
    invoke-static/range {p1 .. p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v19

    .line 628
    .local v19, "prefs":Lcom/fsck/k9/Preferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 629
    .local v14, "folderLoadStart":J
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v16

    .line 630
    .local v16, "folders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 631
    .local v12, "folderLoadEnd":J
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/mail/Folder;

    .local v9, "folder":Lcom/fsck/k9/mail/Folder;
    move-object/from16 v24, v9

    .line 633
    check-cast v24, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    .line 635
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getDisplayClass(Lcom/fsck/k9/Preferences;)Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v5

    .line 638
    .local v5, "fMode":Lcom/fsck/k9/mail/Folder$FolderClass;
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "INBOX"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getArchiveFolderName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getSpamFolderName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 647
    :cond_4
    sget-object v24, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    move-object/from16 v0, v24

    if-eq v4, v0, :cond_3

    .line 649
    sget-object v24, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    move-object/from16 v0, v24

    if-ne v4, v0, :cond_5

    sget-object v24, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_3

    .line 654
    :cond_5
    sget-object v24, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    move-object/from16 v0, v24

    if-ne v4, v0, :cond_6

    sget-object v24, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    move-object/from16 v0, v24

    if-eq v5, v0, :cond_6

    sget-object v24, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_3

    .line 660
    :cond_6
    sget-object v24, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    move-object/from16 v0, v24

    if-ne v4, v0, :cond_7

    sget-object v24, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    move-object/from16 v0, v24

    if-eq v5, v0, :cond_3

    .line 665
    :cond_7
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v24

    add-int v23, v23, v24

    .line 668
    invoke-virtual {v9}, Lcom/fsck/k9/mail/Folder;->getFlaggedMessageCount()I

    move-result v24

    add-int v8, v8, v24

    goto/16 :goto_1

    .line 672
    .end local v5    # "fMode":Lcom/fsck/k9/mail/Folder$FolderClass;
    .end local v9    # "folder":Lcom/fsck/k9/mail/Folder;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 673
    .local v10, "folderEvalEnd":J
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    .line 674
    move-object/from16 v0, v22

    iput v8, v0, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 676
    .local v6, "endTime":J
    sget-boolean v24, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v24, :cond_0

    .line 677
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Account.getStats() on "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v6, v20

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms; loading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v12, v14

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms; evaluating took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sub-long v26, v10, v12

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public declared-synchronized getStoreUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mStoreUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTransportUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mTransportUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrashFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized goToUnreadMessageSearch()Z
    .locals 1

    .prologue
    .line 1389
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnIdentity(Lcom/fsck/k9/mail/Address;)Z
    .locals 1
    .param p1, "addr"    # Lcom/fsck/k9/mail/Address;

    .prologue
    .line 1312
    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnIdentity([Lcom/fsck/k9/mail/Address;)Z
    .locals 6
    .param p1, "addrs"    # [Lcom/fsck/k9/mail/Address;

    .prologue
    const/4 v4, 0x0

    .line 1295
    if-nez p1, :cond_1

    .line 1307
    :cond_0
    :goto_0
    return v4

    .line 1299
    :cond_1
    move-object v1, p1

    .local v1, "arr$":[Lcom/fsck/k9/mail/Address;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1301
    .local v0, "addr":Lcom/fsck/k9/mail/Address;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->findIdentity(Lcom/fsck/k9/mail/Address;)Lcom/fsck/k9/Identity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1303
    const/4 v4, 0x1

    goto :goto_0

    .line 1299
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStorageProviderId()Ljava/lang/String;

    move-result-object v0

    .line 1565
    .local v0, "localStorageProviderId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1567
    const/4 v1, 0x1

    .line 1569
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    invoke-static {v1}, Lcom/fsck/k9/mail/store/StorageManager;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/store/StorageManager;->isReady(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isInUse()Z
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isNotifyNewMail()Z
    .locals 1

    .prologue
    .line 884
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotifySelfNewMail()Z
    .locals 1

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPushPollOnConnect()Z
    .locals 1

    .prologue
    .line 1350
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mPushPollOnConnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReplyAfterQuote()Z
    .locals 1

    .prologue
    .line 1480
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mReplyAfterQuote:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRingNotified()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mRingNotified:Z

    return v0
.end method

.method public declared-synchronized isShowOngoing()Z
    .locals 1

    .prologue
    .line 1030
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mNotifySync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSignatureBeforeQuotedText()Z
    .locals 1

    .prologue
    .line 1080
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetVisibleLimits()V
    .locals 3

    .prologue
    .line 595
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v1

    .line 596
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/store/LocalStore;->resetVisibleLimits(I)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v1, "k9"

    const-string v2, "Unable to reset visible limits"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized save(Lcom/fsck/k9/Preferences;)V
    .locals 14
    .param p1, "preferences"    # Lcom/fsck/k9/Preferences;

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 488
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "accountUuids"

    const-string v13, ""

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 501
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v3

    .line 502
    .local v3, "accounts":[Lcom/fsck/k9/Account;
    array-length v11, v3

    new-array v1, v11, [I

    .line 503
    .local v1, "accountNumbers":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v11, v3

    if-ge v6, v11, :cond_0

    .line 505
    aget-object v11, v3, v6

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v11

    aput v11, v1, v6

    .line 503
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 507
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 508
    move-object v4, v1

    .local v4, "arr$":[I
    array-length v8, v1

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget v0, v4, v7

    .line 510
    .local v0, "accountNumber":I
    iget v11, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    add-int/lit8 v11, v11, 0x1

    if-gt v0, v11, :cond_1

    .line 512
    iput v0, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    .line 508
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 516
    .end local v0    # "accountNumber":I
    :cond_1
    iget v11, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    .line 518
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "accountUuids"

    const-string v13, ""

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "accountUuids":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, ","

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    const-string v11, "accountUuids"

    invoke-interface {v5, v11, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 523
    .end local v1    # "accountNumbers":[I
    .end local v2    # "accountUuids":Ljava/lang/String;
    .end local v3    # "accounts":[Lcom/fsck/k9/Account;
    .end local v4    # "arr$":[I
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".storeUri"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mStoreUri:Ljava/lang/String;

    invoke-static {v12}, Lcom/fsck/k9/helper/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".localStorageProvider"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mLocalStorageProviderId:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 525
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".transportUri"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mTransportUri:Ljava/lang/String;

    invoke-static {v12}, Lcom/fsck/k9/helper/Utility;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 526
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".description"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 527
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".alwaysBcc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".automaticCheckIntervalMinutes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 529
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".idleRefreshMinutes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->mIdleRefreshMinutes:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 530
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".saveAllHeaders"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mSaveAllHeaders:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 531
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".pushPollOnConnect"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mPushPollOnConnect:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 532
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".displayCount"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 533
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".lastAutomaticCheckTime"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-wide v12, p0, Lcom/fsck/k9/Account;->mLastAutomaticCheckTime:J

    invoke-interface {v5, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 534
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".notifyNewMail"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 535
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".notifySelfNewMail"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 536
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".notifyMailCheck"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mNotifySync:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 537
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".deletePolicy"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->mDeletePolicy:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 538
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".draftsFolderName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".sentFolderName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".trashFolderName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 541
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".archiveFolderName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mArchiveFolderName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 542
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".spamFolderName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mSpamFolderName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 543
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".outboxFolderName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 544
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".autoExpandFolderName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 545
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".accountNumber"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->mAccountNumber:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 546
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".hideButtonsEnum"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;

    invoke-virtual {v12}, Lcom/fsck/k9/Account$HideButtons;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 547
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".hideMoveButtonsEnum"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mHideMessageViewMoveButtons:Lcom/fsck/k9/Account$HideButtons;

    invoke-virtual {v12}, Lcom/fsck/k9/Account$HideButtons;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 548
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".showPicturesEnum"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mShowPictures:Lcom/fsck/k9/Account$ShowPictures;

    invoke-virtual {v12}, Lcom/fsck/k9/Account$ShowPictures;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 549
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".enableMoveButtons"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mEnableMoveButtons:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 550
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".folderDisplayMode"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v12}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 551
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".folderSyncMode"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v12}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".folderPushMode"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v12}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 553
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".folderTargetMode"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v12}, Lcom/fsck/k9/Account$FolderMode;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 554
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".signatureBeforeQuotedText"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 555
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".expungePolicy"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 556
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".syncRemoteDeletions"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mSyncRemoteDeletions:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 557
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".maxPushFolders"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 558
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".searchableFolders"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;

    invoke-virtual {v12}, Lcom/fsck/k9/Account$Searchable;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 559
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".chipColor"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->mChipColor:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 560
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".goToUnreadMessageSearch"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 561
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".subscribedFoldersOnly"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 562
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".maximumPolledMessageAge"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 563
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".maximumAutoDownloadMessageSize"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 564
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".quotePrefix"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mQuotePrefix:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 565
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".replyAfterQuote"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mReplyAfterQuote:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 566
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".cryptoApp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mCryptoApp:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 567
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".cryptoAutoSignature"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/fsck/k9/Account;->mCryptoAutoSignature:Z

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 569
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".vibrate"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v12}, Lcom/fsck/k9/NotificationSetting;->shouldVibrate()Z

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 570
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".vibratePattern"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v12}, Lcom/fsck/k9/NotificationSetting;->getVibratePattern()I

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 571
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".vibrateTimes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v12}, Lcom/fsck/k9/NotificationSetting;->getVibrateTimes()I

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 572
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v12}, Lcom/fsck/k9/NotificationSetting;->shouldRing()Z

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 573
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ringtone"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v12}, Lcom/fsck/k9/NotificationSetting;->getRingtone()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".led"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v12}, Lcom/fsck/k9/NotificationSetting;->isLed()Z

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 575
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ledColor"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/fsck/k9/Account;->mNotificationSetting:Lcom/fsck/k9/NotificationSetting;

    invoke-virtual {v12}, Lcom/fsck/k9/NotificationSetting;->getLedColor()I

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 577
    sget-object v4, Lcom/fsck/k9/Account;->networkTypes:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v8, v4

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_3
    if-ge v7, v8, :cond_5

    aget-object v9, v4, v7

    .line 579
    .local v9, "type":Ljava/lang/String;
    iget-object v11, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 580
    .local v10, "useCompression":Ljava/lang/Boolean;
    if-eqz v10, :cond_3

    .line 582
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/fsck/k9/Account;->mUuid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".useCompression."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 577
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 519
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "useCompression":Ljava/lang/Boolean;
    .restart local v1    # "accountNumbers":[I
    .restart local v2    # "accountUuids":Ljava/lang/String;
    .restart local v3    # "accounts":[Lcom/fsck/k9/Account;
    .local v4, "arr$":[I
    .restart local v6    # "i":I
    :cond_4
    const-string v11, ""

    goto/16 :goto_2

    .line 585
    .end local v1    # "accountNumbers":[I
    .end local v2    # "accountUuids":Ljava/lang/String;
    .end local v3    # "accounts":[Lcom/fsck/k9/Account;
    .end local v6    # "i":I
    .local v4, "arr$":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-direct {p0, v11, v5}, Lcom/fsck/k9/Account;->saveIdentities(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 587
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 486
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public declared-synchronized saveAllHeaders()Z
    .locals 1

    .prologue
    .line 1360
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mSaveAllHeaders:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAlwaysBcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "alwaysBcc"    # Ljava/lang/String;

    .prologue
    .line 782
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mAlwaysBcc:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    monitor-exit p0

    return-void

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setArchiveFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "archiveFolderName"    # Ljava/lang/String;

    .prologue
    .line 944
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mArchiveFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    monitor-exit p0

    return-void

    .line 944
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoExpandFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "autoExpandFolderName"    # Ljava/lang/String;

    .prologue
    .line 974
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mAutoExpandFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    monitor-exit p0

    return-void

    .line 974
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutomaticCheckIntervalMinutes(I)Z
    .locals 2
    .param p1, "automaticCheckIntervalMinutes"    # I

    .prologue
    .line 848
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I

    .line 849
    .local v0, "oldInterval":I
    iput p1, p0, Lcom/fsck/k9/Account;->mAutomaticCheckIntervalMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 848
    .end local v0    # "oldInterval":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setChipColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->mChipColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCompression(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "networkType"    # Ljava/lang/String;
    .param p2, "useCompression"    # Z

    .prologue
    .line 1138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    monitor-exit p0

    return-void

    .line 1138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCryptoApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "cryptoApp"    # Ljava/lang/String;

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/fsck/k9/Account;->mCryptoApp:Ljava/lang/String;

    .line 1507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/Account;->mCryptoProvider$45ec793c:Landroid/support/v4/app/LoaderManager;

    .line 1508
    return-void
.end method

.method public setCryptoAutoSignature(Z)V
    .locals 0
    .param p1, "cryptoAutoSignature"    # Z

    .prologue
    .line 1517
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mCryptoAutoSignature:Z

    .line 1518
    return-void
.end method

.method public declared-synchronized setDeletePolicy(I)V
    .locals 1
    .param p1, "deletePolicy"    # I

    .prologue
    .line 899
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->mDeletePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    monitor-exit p0

    return-void

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    monitor-exit p0

    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDisplayCount(I)V
    .locals 1
    .param p1, "displayCount"    # I

    .prologue
    .line 861
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 863
    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->mDisplayCount:I

    .line 869
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->resetVisibleLimits()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    monitor-exit p0

    return-void

    .line 867
    :cond_0
    :try_start_1
    sget v0, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    iput v0, p0, Lcom/fsck/k9/Account;->mDisplayCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 861
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftsFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "draftsFolderName"    # Ljava/lang/String;

    .prologue
    .line 909
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mDraftsFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    monitor-exit p0

    return-void

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 772
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableMoveButtons(Z)V
    .locals 0
    .param p1, "enableMoveButtons"    # Z

    .prologue
    .line 1495
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mEnableMoveButtons:Z

    .line 1496
    return-void
.end method

.method public declared-synchronized setExpungePolicy(Ljava/lang/String;)V
    .locals 1
    .param p1, "expungePolicy"    # Ljava/lang/String;

    .prologue
    .line 1105
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mExpungePolicy:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    monitor-exit p0

    return-void

    .line 1105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFolderDisplayMode(Lcom/fsck/k9/Account$FolderMode;)Z
    .locals 2
    .param p1, "displayMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    .line 989
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;

    .line 990
    .local v0, "oldDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    iput-object p1, p0, Lcom/fsck/k9/Account;->mFolderDisplayMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 989
    .end local v0    # "oldDisplayMode":Lcom/fsck/k9/Account$FolderMode;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)Z
    .locals 2
    .param p1, "pushMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;

    .line 1024
    .local v0, "oldPushMode":Lcom/fsck/k9/Account$FolderMode;
    iput-object p1, p0, Lcom/fsck/k9/Account;->mFolderPushMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1022
    .end local v0    # "oldPushMode":Lcom/fsck/k9/Account$FolderMode;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFolderSyncMode(Lcom/fsck/k9/Account$FolderMode;)Z
    .locals 3
    .param p1, "syncMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    const/4 v1, 0x1

    .line 1001
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    .line 1002
    .local v0, "oldSyncMode":Lcom/fsck/k9/Account$FolderMode;
    iput-object p1, p0, Lcom/fsck/k9/Account;->mFolderSyncMode:Lcom/fsck/k9/Account$FolderMode;

    .line 1004
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_1

    .line 1012
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1008
    :cond_1
    :try_start_1
    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_0

    .line 1012
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1001
    .end local v0    # "oldSyncMode":Lcom/fsck/k9/Account$FolderMode;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFolderTargetMode(Lcom/fsck/k9/Account$FolderMode;)V
    .locals 1
    .param p1, "folderTargetMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    .line 1075
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mFolderTargetMode:Lcom/fsck/k9/Account$FolderMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    monitor-exit p0

    return-void

    .line 1075
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGoToUnreadMessageSearch(Z)V
    .locals 1
    .param p1, "goToUnreadMessageSearch"    # Z

    .prologue
    .line 1394
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->goToUnreadMessageSearch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    monitor-exit p0

    return-void

    .line 1394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHideMessageViewButtons(Lcom/fsck/k9/Account$HideButtons;)V
    .locals 1
    .param p1, "hideMessageViewButtons"    # Lcom/fsck/k9/Account$HideButtons;

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mHideMessageViewButtons:Lcom/fsck/k9/Account$HideButtons;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    monitor-exit p0

    return-void

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHideMessageViewMoveButtons(Lcom/fsck/k9/Account$HideButtons;)V
    .locals 1
    .param p1, "hideMessageViewButtons"    # Lcom/fsck/k9/Account$HideButtons;

    .prologue
    .line 1055
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mHideMessageViewMoveButtons:Lcom/fsck/k9/Account$HideButtons;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    monitor-exit p0

    return-void

    .line 1055
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIdentities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1281
    .local p1, "newIdentities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    monitor-exit p0

    return-void

    .line 1281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIdleRefreshMinutes(I)V
    .locals 1
    .param p1, "idleRefreshMinutes"    # I

    .prologue
    .line 1345
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->mIdleRefreshMinutes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    monitor-exit p0

    return-void

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastAutomaticCheckTime(J)V
    .locals 1
    .param p1, "lastAutomaticCheckTime"    # J

    .prologue
    .line 879
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/fsck/k9/Account;->mLastAutomaticCheckTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    monitor-exit p0

    return-void

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSelectedFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 1536
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->lastSelectedFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    monitor-exit p0

    return-void

    .line 1536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocalStorageProviderId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/fsck/k9/Account;->mLocalStorageProviderId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/Account;->switchLocalStorage(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    iput-object p1, p0, Lcom/fsck/k9/Account;->mLocalStorageProviderId:Ljava/lang/String;

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 819
    :catch_0
    move-exception v0

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized setMaxPushFolders(I)Z
    .locals 2
    .param p1, "maxPushFolders"    # I

    .prologue
    .line 1115
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I

    .line 1116
    .local v0, "oldMaxPushFolders":I
    iput p1, p0, Lcom/fsck/k9/Account;->mMaxPushFolders:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1115
    .end local v0    # "oldMaxPushFolders":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMaximumAutoDownloadMessageSize(I)V
    .locals 1
    .param p1, "maximumAutoDownloadMessageSize"    # I

    .prologue
    .line 1424
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->maximumAutoDownloadMessageSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    monitor-exit p0

    return-void

    .line 1424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaximumPolledMessageAge(I)V
    .locals 1
    .param p1, "maximumPolledMessageAge"    # I

    .prologue
    .line 1414
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/fsck/k9/Account;->maximumPolledMessageAge:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    monitor-exit p0

    return-void

    .line 1414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 742
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    monitor-exit p0

    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotifyNewMail(Z)V
    .locals 1
    .param p1, "notifyNewMail"    # Z

    .prologue
    .line 889
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mNotifyNewMail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    monitor-exit p0

    return-void

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotifySelfNewMail(Z)V
    .locals 1
    .param p1, "notifySelfNewMail"    # Z

    .prologue
    .line 1095
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mNotifySelfNewMail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    monitor-exit p0

    return-void

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOutboxFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "outboxFolderName"    # Ljava/lang/String;

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mOutboxFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    monitor-exit p0

    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPushPollOnConnect(Z)V
    .locals 1
    .param p1, "pushPollOnConnect"    # Z

    .prologue
    .line 1355
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mPushPollOnConnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    monitor-exit p0

    return-void

    .line 1355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQuotePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "quotePrefix"    # Ljava/lang/String;

    .prologue
    .line 1475
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mQuotePrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    monitor-exit p0

    return-void

    .line 1475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReplyAfterQuote(Z)V
    .locals 1
    .param p1, "replyAfterQuote"    # Z

    .prologue
    .line 1485
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mReplyAfterQuote:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    monitor-exit p0

    return-void

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRingNotified(Z)V
    .locals 0
    .param p1, "ringNotified"    # Z

    .prologue
    .line 793
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mRingNotified:Z

    .line 794
    return-void
.end method

.method public declared-synchronized setSaveAllHeaders(Z)V
    .locals 1
    .param p1, "saveAllHeaders"    # Z

    .prologue
    .line 1365
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mSaveAllHeaders:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    monitor-exit p0

    return-void

    .line 1365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSearchableFolders(Lcom/fsck/k9/Account$Searchable;)V
    .locals 1
    .param p1, "searchableFolders"    # Lcom/fsck/k9/Account$Searchable;

    .prologue
    .line 1335
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->searchableFolders:Lcom/fsck/k9/Account$Searchable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1336
    monitor-exit p0

    return-void

    .line 1335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSentFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sentFolderName"    # Ljava/lang/String;

    .prologue
    .line 924
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mSentFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    monitor-exit p0

    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowOngoing(Z)V
    .locals 1
    .param p1, "showOngoing"    # Z

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mNotifySync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    monitor-exit p0

    return-void

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowPictures(Lcom/fsck/k9/Account$ShowPictures;)V
    .locals 1
    .param p1, "showPictures"    # Lcom/fsck/k9/Account$ShowPictures;

    .prologue
    .line 1065
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mShowPictures:Lcom/fsck/k9/Account$ShowPictures;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    monitor-exit p0

    return-void

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSignature(Ljava/lang/String;)V
    .locals 2
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 762
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    monitor-exit p0

    return-void

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSignatureBeforeQuotedText(Z)V
    .locals 1
    .param p1, "mIsSignatureBeforeQuotedText"    # Z

    .prologue
    .line 1085
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mIsSignatureBeforeQuotedText:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    monitor-exit p0

    return-void

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSignatureUse(Z)V
    .locals 2
    .param p1, "signatureUse"    # Z

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->identities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    monitor-exit p0

    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSpamFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "spamFolderName"    # Ljava/lang/String;

    .prologue
    .line 954
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mSpamFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    monitor-exit p0

    return-void

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStoreUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "storeUri"    # Ljava/lang/String;

    .prologue
    .line 712
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mStoreUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    monitor-exit p0

    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubscribedFoldersOnly(Z)V
    .locals 1
    .param p1, "subscribedFoldersOnly"    # Z

    .prologue
    .line 1404
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    monitor-exit p0

    return-void

    .line 1404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSyncRemoteDeletions(Z)V
    .locals 1
    .param p1, "syncRemoteDeletions"    # Z

    .prologue
    .line 1526
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/fsck/k9/Account;->mSyncRemoteDeletions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    monitor-exit p0

    return-void

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTransportUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "transportUri"    # Ljava/lang/String;

    .prologue
    .line 722
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mTransportUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    monitor-exit p0

    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrashFolderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "trashFolderName"    # Ljava/lang/String;

    .prologue
    .line 934
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/fsck/k9/Account;->mTrashFolderName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    monitor-exit p0

    return-void

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subscribedFoldersOnly()Z
    .locals 1

    .prologue
    .line 1399
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->subscribedFoldersOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public switchLocalStorage(Ljava/lang/String;)V
    .locals 1
    .param p1, "newStorageProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/fsck/k9/Account;->mLocalStorageProviderId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/LocalStore;->switchLocalStorage(Ljava/lang/String;)V

    .line 1385
    :cond_0
    return-void
.end method

.method public declared-synchronized syncRemoteDeletions()Z
    .locals 1

    .prologue
    .line 1521
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fsck/k9/Account;->mSyncRemoteDeletions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Account;->mDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public useCompression(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1156
    const-string v0, "OTHER"

    .line 1157
    .local v0, "networkType":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1166
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Account;->useCompression(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1160
    :pswitch_0
    const-string v0, "MOBILE"

    .line 1161
    goto :goto_0

    .line 1163
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 1157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized useCompression(Ljava/lang/String;)Z
    .locals 2
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/Account;->compressionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    .local v0, "useCompression":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 1146
    const/4 v1, 0x1

    .line 1150
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1143
    .end local v0    # "useCompression":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
