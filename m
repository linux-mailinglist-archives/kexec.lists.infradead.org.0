Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC12FF8D9D
	for <lists+kexec@lfdr.de>; Tue, 12 Nov 2019 12:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CKVuwpxUmeU+eZ52/MPD4fPBxyGoX1lJalX+tAADe/4=; b=B11
	6/k4T6CeMooM47kP7IkxNCV/qsTLlEkAW1CUeYfFK1r5BbuwG0No+o+EBPv4jj4VGtTbeweHNPkGb
	76SGy2132EuNVQlKonU3IpyouhGWASmOHLSL/rNmUDEHBSUAmpBbQnw8o77n3GkpJ1UtFdodC9G4S
	z7yIE2Mw3RVBkTgdZoWpzKLR6Ic3l9fQvuM+qd1oXKlWKEdGURqxEb0yeIQoacUld/mJZ4L9FKwER
	af0GsgEvH5nqb7hUC+4ROzMPuiDF37SvJ5kgxDYu5O+nWdXrytEdbjm0G9DpUwlQaCRJxqHUvH1zQ
	MZoqRfr8U6bXgK+GbNzgdmVaOlGYuOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUU38-0000So-0H; Tue, 12 Nov 2019 11:09:30 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUU31-0000SA-Fh
 for kexec@lists.infradead.org; Tue, 12 Nov 2019 11:09:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573556960;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ilMpqo2QKiHNnh9NT0hmliRckL9F11TjTcNx0td295o=;
 b=PbcQ+S+j3RpsyA5gj2llbbmmv1jpY/BlTSJaOavUyfkDOcNEobjMghyex56B8gho2rgoY9
 3D54yPSH333MlKWMNcdMv4e4QDYdPuFR+0mn7bxtt9ARIcp+OXrYCTYfXKpPzz8ha0Ut9E
 1Q2H9hLgRc/779+AnU8C/+jw3Xye1lg=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288--WNs3MIuNi6M7yw1NVAhzA-1; Tue, 12 Nov 2019 06:09:19 -0500
Received: by mail-pg1-f200.google.com with SMTP id w22so14272704pgj.18
 for <kexec@lists.infradead.org>; Tue, 12 Nov 2019 03:09:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cEbp+n8jX5pLpRf5YpBuhD9aoL4i1AE4ccBLdcoXTlQ=;
 b=OiwZMsKx6j2tIwC6uTISXvWC6P8HrSEJvdGndKWNSfXW3ljnLk4wA+6H+gJSwYveLj
 503Zdb5Qm28xgaYdycwYBLiVw8NCP6b5FZfl6SUffVbTjXXDIMQfaz2pFkbLin8vcyHD
 2JSgoSqqp6PPY4QfdITbzDkatt5DOg6INbU7s5rqx2w3Ch8dB3/JLpyQBhBsk9p0YUHZ
 9w5+eKEV+x5AC6YvrX4Wn2Gh/FBkq8RaOiht1GLjvzVWaZ48lHpqiQyMS89eZEyCii4F
 vlhnksRxcq8W4R5R7hRPkQrUGCpkOWohfgmJau5ECcFQ7vB7nmLXguclMo1ZSafUNUiZ
 19bA==
X-Gm-Message-State: APjAAAV+pIoI5q8FW6RlfhOprQUHrgSLXtixIwJt94Q8102TebtBD4e/
 SNcl+wN21U9DkUsmSg/q3agRIiVU8/urK5v083X7hT38QzBjScqwzHeAINJxBeNNQcbGOwo9Ev3
 navowSJMNj9DVoDu6079c
X-Received: by 2002:a17:90b:300c:: with SMTP id
 hg12mr5771541pjb.75.1573556957219; 
 Tue, 12 Nov 2019 03:09:17 -0800 (PST)
X-Google-Smtp-Source: APXvYqwMowpup9Qvqzh+PhHom7h4HySLiiNBa86rJQuCu5+7Lpg6s3xjtgGmefxw/36pExQTAawPGQ==
X-Received: by 2002:a17:90b:300c:: with SMTP id
 hg12mr5771482pjb.75.1573556956861; 
 Tue, 12 Nov 2019 03:09:16 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id j186sm17682053pfg.161.2019.11.12.03.09.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 03:09:15 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2 extensions
Date: Tue, 12 Nov 2019 16:38:55 +0530
Message-Id: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-MC-Unique: -WNs3MIuNi6M7yw1NVAhzA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_030923_600907_8443FAA9 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: John Donnelly <john.p.donnelly@oracle.com>, bhsharma@redhat.com,
 bhupesh.linux@gmail.com, Kazuhito Hagio <k-hagio@ab.jp.nec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changes since v3:
----------------
- v3 can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-March/022534.html
- Added a new patch (via [PATCH 4/4]) which marks '--mem-usage' option as
  unsupported for arm64 architecture. With the newer arm64 kernels
  supporting 48-bit/52-bit VA address spaces and keeping a single
  binary for supporting the same, the address of
  kernel symbols like _stext, which could be earlier used to determine
  VA_BITS value, can no longer to determine whether VA_BITS is set to 48
  or 52 in the kernel space. Hence for now, it makes sense to mark
  '--mem-usage' option as unsupported for arm64 architecture until
  we have more clarity from arm64 kernel maintainers on how to manage
  the same in future kernel/makedumpfile versions.

Changes since v2:
----------------
- v2 can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-February/022456.html
- I missed some comments from Kazu sent on the LVA v1 patch when I sent
  out the v2. So, addressing them now in v3.
- Also added a patch that adds a tree-wide feature to read
  'MAX_PHYSMEM_BITS' from vmcoreinfo (if available).

Changes since v1:
----------------
- v1 was sent as two separate patches:
  http://lists.infradead.org/pipermail/kexec/2019-February/022424.html
  (ARMv8.2-LPA)
  http://lists.infradead.org/pipermail/kexec/2019-February/022425.html
  (ARMv8.2-LVA)
- v2 combined the two in a single patchset and also addresses Kazu's
  review comments.

This patchset adds support for ARMv8.2 extensions in makedumpfile code.
I cover the following two cases with this patchset:
 - 48-bit kernel VA + 52-bit PA (LPA)
 - 52-bit kernel VA (LVA) + 52-bit PA (LPA)
 - 48-bit kernel VA + 52-bit user-space VA (LVA)
 - 52-bit kernel VA + 52-bit user-space VA (Full LVA)

This has been tested for the following user-cases:
1. Creating a dumpfile using /proc/vmcore,
2. Creating a dumpfile using /proc/kcore, and
3. Post-processing a vmcore.

I have tested this patchset on the following platforms, with kernels
which support/do-not-support ARMv8.2 features:
1. CPUs which don't support ARMv8.2 features, e.g. qualcomm-amberwing,
   ampere-osprey.
2. Prototype models which support ARMv8.2 extensions (e.g. ARMv8 FVP
   simulation model).

Also a preparation patch has been added in this patchset which adds a
common feature for archs (except arm64, for which similar support is
added via subsequent patch) to retrieve 'MAX_PHYSMEM_BITS' from
vmcoreinfo (if available).

I recently posted two kernel patches (see [0] and [1]) which append
'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' to vmcoreinfo in the kernel
code, so that user-space code can benefit from the same.

This patchset ensures backward compatibility for kernel versions in
which 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' are not available in
vmcoreinfo.

[0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html
[1]. http://lists.infradead.org/pipermail/kexec/2019-November/023962.html

Cc: John Donnelly <john.p.donnelly@oracle.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: kexec@lists.infradead.org

Bhupesh Sharma (4):
  tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from vmcoreinfo (if available)
  makedumpfile/arm64: Add support for ARMv8.2-LPA (52-bit PA support)
  makedumpfile/arm64: Add support for ARMv8.2-LVA (52-bit kernel VA
    support)
  makedumpfile: Mark --mem-usage option unsupported for arm64

 arch/arm.c     |   8 +-
 arch/arm64.c   | 438 ++++++++++++++++++++++++++++++++++++++++++---------------
 arch/ia64.c    |   7 +-
 arch/ppc.c     |   8 +-
 arch/ppc64.c   |  49 ++++---
 arch/s390x.c   |  29 ++--
 arch/sparc64.c |   9 +-
 arch/x86.c     |  34 +++--
 arch/x86_64.c  |  27 ++--
 makedumpfile.c |   7 +
 makedumpfile.h |   3 +-
 11 files changed, 439 insertions(+), 180 deletions(-)

-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
