Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5323C64D0C
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 21:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h6rzG3/S48KjlkTLO7usTgtDyOwKKWWaXSesOpkQTrI=; b=QHh
	92gtYeF0uPtL3w9URjQLeViJwMPlwXqhrJPdVydbKQowuue+y9B9AGYVi8TX2502QEvIGi1+v2zg0
	kjDDBxKQa7pzNf+duVnTLQgpBMozPEFHY/Ypr8Qa2MxNx1xn3PcJYW2/eMRLIRmKEndtHhyy1JiVb
	9y8m4gysKtys0b2y0LORTeAqrk4FY1CEDe+f/Prn0e8B7wZP9eV6HKPmHx8Gix/GG0JHDnLEdu///
	plsz98aycJdiLXp27Q0U6O5W9eUA3vAClRJHC/ABNwvyUDSjFGnEMj4bTMtoLGNX2L016spJZGfUo
	/o8FuxTqo1BnobT3F3NchoWUBUVlMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlIfn-0006Hw-0h; Wed, 10 Jul 2019 19:54:39 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIfj-0006Hc-R9
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 19:54:37 +0000
Received: by mail-pg1-f196.google.com with SMTP id q4so1726700pgj.8
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 12:54:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xesFWbpmvI7CWez50ecoh/czqY/zEPWBxSLrAFGf01M=;
 b=flMkD7CzlzJ5rOciZV8SNVDmD7cOh/2EMF0sXQcbmYSprq+hT98AW8jHdnr6+/ODom
 03XO94eI0Ksj35Dcm3cpGVmJhMlHgz5oX5pIe8uREi/R6RjNUoFtfXcVdjNHeynmfz6F
 3uSSPl8DW/4TYmxBtsUi6O7XmgVKLjd1hw5jznTGDOvEfSMR7J4jbZ0YzVh5KMn1ktMQ
 I/pJIbDORN8T2/lbcwvntTzvZA2L5VJtdfHFdOL9GbIYg0Xn4KpKSJy5e6Y/Tx/x5l2O
 Goh59Ej0K/f2w4Z690JotB306S58blFrdwBFcP04EDdc9NOcTRE2LFYUZ7dSmFJ9JLop
 TL2A==
X-Gm-Message-State: APjAAAVj9DbeYB1+39H2Y1Q2wmbLoixhe5I1AnOu5hm+F/OnS0gQ/H2R
 ee+0IXvKRK6dbCwRZGMWtzRl+3QzRM8=
X-Google-Smtp-Source: APXvYqzhKFFn43NDsIDxy+sJoLL/OTB/XM439yImg0ItPJt5TPG7+VLe/k6uAQQxTqW8P6gnITuAZQ==
X-Received: by 2002:a17:90a:35e6:: with SMTP id
 r93mr150054pjb.20.1562788474312; 
 Wed, 10 Jul 2019 12:54:34 -0700 (PDT)
Received: from localhost ([182.69.207.54])
 by smtp.gmail.com with ESMTPSA id t96sm2956228pjb.1.2019.07.10.12.54.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 12:54:33 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 0/4] kexec/arm64: Add support for zlib compressed kernel
 images (Image.gz)
Date: Thu, 11 Jul 2019 01:24:25 +0530
Message-Id: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_125435_879508_9D4CD8F6 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bhupesh.linux@gmail.com, bhsharma@redhat.com, horms@verge.net.au,
 takahiro.akashi@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

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
 kexec/arch/arm64/kexec-uImage-arm64.c |  13 ++-
 kexec/arch/arm64/kexec-zImage-arm64.c | 199 ++++++++++++++++++++++++++++++++++
 kexec/kexec-zlib.h                    |   1 +
 kexec/kexec.c                         |  14 +++
 kexec/zlib.c                          |  32 ++++++
 9 files changed, 270 insertions(+), 4 deletions(-)
 create mode 100644 kexec/arch/arm64/kexec-zImage-arm64.c

-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
