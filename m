Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B0C129F32
	for <lists+kexec@lfdr.de>; Tue, 24 Dec 2019 09:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TZam7zr49l8BUdsJn1PrCIfQEMjjJYAL7KdXAHV5hJg=; b=HPjVmNfnYNXBsh
	UyPBs1LGHnDfhXJKA5QkaAreNxgMUu6uw5R1sP5OnUdVuLV2npcUPtiSyZg5endHM8ovo8CtoiXdK
	WT7UO/UVbaawsHk6oa4blorlLzUb442MPNGyR7YFbOVru7N8TffJV68n/ys17c6g7EDq3tUjmFoaF
	h1Vwiv4EDA839Wx1DJWdT/PvWidtmN9M65H8NG+y3uZKvhkh0JnFMUFufek1K/4bb/OmwuI5/Hxmn
	T0NpwDpIyLHuqGU9ARsP0UT5W4jL4jUMscoB5bdtvAccYTKalSdQpFJtrzxVREiaTskpI1Tl2z0Pt
	unsxBsp4y3hr5gh4sWCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijfh0-0000bO-0P; Tue, 24 Dec 2019 08:37:26 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijfgt-0000Zj-Nh
 for kexec@lists.infradead.org; Tue, 24 Dec 2019 08:37:21 +0000
Received: by mail-il1-x141.google.com with SMTP id v15so16101320iln.0
 for <kexec@lists.infradead.org>; Tue, 24 Dec 2019 00:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=VlyE5hkjIlVtebFVtbJSUDG1nq6yxqsP+CXAAvK16kEDCa9/FIjqePwKOUOUFxUPGI
 IobnBKqUZtvWs9liflZ3kccv66QhBRcGlV0NLmY+Uo4N83fE4acq5fKevjm3GVqyORPq
 V25kDNfLb/u3NDc8qTILa6U172uqigqrULaJBwbLq67hwZ4izN64H1YClKD775qzZNF9
 0l4JMYDmF4urkgDiYDNvOqEpGdvq+E73I4yTDC9aWLwqkTeAHCJ4Ixn//xPq6JLVBBNn
 aamV2t3zoMGAP8AF+RdWv4cRolj9/iVR4FvRYYpwL/EkEZCm6WUSjJi89kMXjGu5nUwC
 ihKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=Kc6ki7/CeZUsaIWt+/rKmsqTak7u5goIN8E+noQd5qawYQGdXzL8NUnbnywdDWb1B4
 zIhCerexh016G5oZ1dclR5YAJPlKc0Jg9Z8xMTVPJz5JgTFCoZtkmt2gh609gYzuktp/
 yTxiRogf3HNdACAbw/lAc2KEBPSbY8Z+P4kWz29jturgSoWv1ssLHMZPmDAHTBWReXiX
 lgWOp7BJK7/VqbHsnE5NoRjpjsWOS7cGlfUv6RSPrDd1i3Oz3Jd8db0fKtjaVdD5SPCu
 Y9DWY1fv5EYq7jHv6BdT/bbcryDv59fSvwoNYKhLd3va8azQn9S0BCPBaZ5a0ZkH96KN
 3wmg==
X-Gm-Message-State: APjAAAWnDh2YpedztF4XVJNcPtP6dEA7csiPNwIK2kJyeIYtz6jVvAc4
 8eKow4Bjpemfre3F7z2Vu+ubxW2Ok01j6DvL6r8=
X-Google-Smtp-Source: APXvYqxLrvnOpR+O6ofXnSEOnwrvGziUPmMlJTtG0DR2NirldWli2cXJyiYqfAfUdIRDZDD83uetmfvXHC6vAEF7nxQ=
X-Received: by 2002:a92:c50e:: with SMTP id r14mr29396039ilg.52.1577176639205; 
 Tue, 24 Dec 2019 00:37:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5e:c244:0:0:0:0:0 with HTTP; Tue, 24 Dec 2019 00:37:18
 -0800 (PST)
From: Beth Nat <am19040@gmail.com>
Date: Tue, 24 Dec 2019 08:37:18 +0000
Message-ID: <CAEgaL+akE_7uuR+QBv+=W5npZ3Bg=jguaB4zU63CGVjztQeQyg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_003719_766650_48F555CB 
X-CRM114-Status: UNSURE (  -0.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (bethnatividad9[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (am19040[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (am19040[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Reply-To: bethnatividad9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

How are you today my dear? i saw your profile and it interests me, i
am a Military nurse from USA. Can we be friend? I want to know more
about you.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
