Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FFA6835F
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 08:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZuLdT7dcZ4xYL7hEnwXBAfLfwo5heApk8g4jc52p6e8=; b=h/q
	KZONn/NPeSYgA+V5qGKIB3WyjvJNHgLN+agv4xtccBPRuUoi8nxfWG7PqqWLH9StZZXX8Lyy02N4Z
	P7BiMtcK7WQcYQUtbBKGrnonUBbVCNJ9x+aLSfd0SBMeECiQIecWJZcyuhBXo5YuZk92dGhUuqEIW
	l3cHXGu3wyar36qsX6NSt/h41KGF0Oe9pXk7NMBBrJIS+3Fs64OmhPL6grVACn1dx46HABx8N2DdQ
	r5ws0Mhj9fKOJRFh16yqv7jYYfpY9BzivexjlA3iwSSLaSyIs8izZWdLk46ganfHpDdE9PiOUh+OL
	J88C6QQWAlv6aMQzLSC+aADftowiQcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmu4v-0005r4-Uf; Mon, 15 Jul 2019 06:03:14 +0000
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmu4o-0005qD-Nl
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 06:03:08 +0000
Received: by mail-pl1-f194.google.com with SMTP id a93so7724077pla.7
 for <kexec@lists.infradead.org>; Sun, 14 Jul 2019 23:03:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=J2lWSaohAHo7vPwFExXuWk2m657wnEIfn61wMyJc3lw=;
 b=fsgdR9BeOj891t+Pu7jeEyVuIlYQrJW6A89veL0XSR6GO9Gk9/bP73lkuaIWQ+3KyL
 lvT2mATYpZ5f3JWFCBJSwt2d3+opiqEWplI7v9VAf+Dcu+Iote/k17Y1ddtY/61lQl2l
 LtU9Ezj66H+w6t5hXWcsH3Un7eQj0v41TBr2rjj3TpKNSeM412XZg5199N5vsFqUKy1t
 U7t1KPjNxgFkN3osj05SuadA/5o7XARMNKfb1w1gOFKKG4YPwSRjxkBLr19ErCvqziL7
 Q1FXcqc4SCkGjKRqb3sj5PkcMSqdjhYgkEpNgRkg7/Tgthfn7eosFp65wn3QK/hxt5wF
 IsKg==
X-Gm-Message-State: APjAAAUb5TVednYF3IiibfZ8SufOEaiTzVAPy0UJnzWdjOBZnfSZxT4i
 kdMU4VUajhLM+iW2rRL4lAM+8NqL+m0=
X-Google-Smtp-Source: APXvYqyTf9ALAEIt9n8jDMfsW5kkNFAQXBruCL7eoObmftP5qnxuMiIj7F0Nx1u3gCrZpm8nPGMrMg==
X-Received: by 2002:a17:902:ab8f:: with SMTP id
 f15mr26140372plr.159.1563170583199; 
 Sun, 14 Jul 2019 23:03:03 -0700 (PDT)
Received: from localhost ([106.215.98.33])
 by smtp.gmail.com with ESMTPSA id z2sm14248578pgg.58.2019.07.14.23.03.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 23:03:02 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v2 0/4] kexec/arm64: Add support for zlib compressed kernel
 images (Image.gz)
Date: Mon, 15 Jul 2019 11:32:52 +0530
Message-Id: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_230306_774402_95566F0A 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: takahiro.akashi@linaro.org, bhsharma@redhat.com, bhupesh.linux@gmail.com,
 horms@verge.net.au
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changes since v1:
----------------
(v1 can be viewed here: http://lists.infradead.org/pipermail/kexec/2019-July/023288.html)
 - Fixed the potential file descriptor leakage code legs pointed out by
   Simon.
 - Ran Valgrind to make sure no potential memory leakage issues are
   introduced by this patchset.

This patchset adds the support for zlib compressed kernel images
(Image.gz) for arm64 kexec-tools.

This was discussed a bit with the arm64 kernel maintainers (see [0]) and
after discussing the pros and cons of adding this support in
kernel-space v/s in user-space, we decided it makes more sense to add
this support to the user-space kexec-tools.

Note that this series adds support for unsigned arm64 Image.gz files
only as signing an Image.gz type file is not a easy implementation from
kexec-tools p-o-v. Also even standard signing tools like sbsign fail to
recongize the Image.gz format:

 $ sbsign --key certs/signing_key.pem  --cert certs/signing_key.pem Image.gz
   Invalid DOS header magic

... because that gzip file isn't a PE32+ that can be loaded by UEFI.
So I will work on the same in coming days and try to send a RFC
patchset for the same later on.

[0]. http://lists.infradead.org/pipermail/kexec/2019-June/023156.html

Bhupesh Sharma (4):
  kexec/kexec.c: Add the missing close() for fd used for
    kexec_file_load()
  kexec-uImage-arm64.c: Fix return value of uImage_arm64_probe()
  kexec/kexec-zlib.h: Add 'is_zlib_file()' helper function
  kexec/arm64: Add support for handling zlib compressed (Image.gz) image

 kexec/arch/arm64/Makefile             |   3 +-
 kexec/arch/arm64/kexec-arm64.c        |   1 +
 kexec/arch/arm64/kexec-arm64.h        |   7 ++
 kexec/arch/arm64/kexec-image-arm64.c  |   4 +-
 kexec/arch/arm64/kexec-uImage-arm64.c |  13 +-
 kexec/arch/arm64/kexec-zImage-arm64.c | 226 ++++++++++++++++++++++++++++++++++
 kexec/kexec-zlib.h                    |   1 +
 kexec/kexec.c                         |  14 +++
 kexec/zlib.c                          |  38 ++++++
 9 files changed, 303 insertions(+), 4 deletions(-)
 create mode 100644 kexec/arch/arm64/kexec-zImage-arm64.c

-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
