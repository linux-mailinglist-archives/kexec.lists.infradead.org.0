Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B7E1CCC6
	for <lists+kexec@lfdr.de>; Tue, 14 May 2019 18:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7ialKa28ibuB+Y+HXsO7UO7MHCa8ssZe2vgHMf+wH5U=; b=WLGcsttnr1l+kJ
	DKYfoVoxD/07ybeWozppUMbocT7FTeuDSaGYKj3bHYPrX8PYlzW2NKXTwoT5yEZp2tlr5pEdqmysW
	FvisnmGolqS2iHHPheNDrMZzvnJrb+TkNvifxKkbdYCXqESl/kvJ+SlP8+st9o7nskeHW9LlZSLuV
	pY1N+foaeDavaxzzORYsk9d3y0S2AVcDjultCpN6wM5MsvxcvophZlCRTPm7wpaC64lPIkGFVoZ2z
	uR6YQqYVj2cpmEwb0343bXXR3Pgxkc7iybmsKkhm//+/UZfqxsvkt8cftIAAmSFRcXCPzazfb1TSr
	nsoOHSialU3ssOfXEBPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQa8G-0007iN-KE; Tue, 14 May 2019 16:18:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQa8D-0007hz-HQ
 for kexec@lists.infradead.org; Tue, 14 May 2019 16:18:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id e15so7502490wrs.4
 for <kexec@lists.infradead.org>; Tue, 14 May 2019 09:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2QCo8Dha4jyH5qWVup39lkl3qNYvyEmFp/lbafcwv0g=;
 b=M2KCHHXa9w7/0ORsFwfWWtv8dG1WOl97mnj3NEraBVfUPCaS3RJyCUsg0aDol2crMV
 raEb9PUzHG/xhP6y6ugm6qvILLGa8UEU//4WsgOZwBDbII7z1cevZXlD4xywNq1wcR3Q
 w0Vl+YrMkTKbMLgJp0H3HliVuCckDZBdoFKx7fzPBO/OP8Bc3AwQp6gVMUSaF7QEvZGu
 fItLVS3WYog+yqtkIDBHgRL18EcAfR1z0ve0HPcxOTPQ28xswqyWZui5KWr/1olovf0n
 +NHrQUziMAS0fVm1Eb/wlwZy0NNHp+wKWJ+bUCFve3NAgimjqazbg1jOtDQ4Tar7EQyR
 Gfsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2QCo8Dha4jyH5qWVup39lkl3qNYvyEmFp/lbafcwv0g=;
 b=jfx1Z9IIMLSqDSzWo10lulaKoYchMNqt4TboroOqnzwShKofh5H5QkmPZosSuTV0f8
 6dj0j3IQlPpvFMPURYCllcrKcGew+xCpQjn5Wz9hgNHKJ76JhjtJH5Z3c0Wt5DZCrJLi
 ACD1tqNxUdGJIXEt/JgoaGRc0JRoBh6WTNU5zdArLmwObuq6Vt0uTyFVxM3ZNPt5DZX6
 nkl8kGL44O4fy5m9+jWg9mT9qyFCvaq2qR8lEtkq4noP3DjVBamItmYgIiXzHTNwOoxk
 0ixoC1EvGW8hi9DLbHGnpEwl4/BGQOu8n/lFks4KGTXIiuEghR0R1Y9OVuTmlKxH/4Nb
 BsEA==
X-Gm-Message-State: APjAAAWCVnhYXABo0oqC09817PDwERQtlhiprG32p9UxzEjYtX3ySRG2
 +7ubv+UAJj0wuaU2+/IHqv4=
X-Google-Smtp-Source: APXvYqxYdKqSrZRWSHsMpQlKO7iixoLljsIATMn2P6fIRC02plxoPJYE12VcGiTDYRt10LFDD8Y+Wg==
X-Received: by 2002:a5d:66c1:: with SMTP id k1mr14777198wrw.225.1557850699692; 
 Tue, 14 May 2019 09:18:19 -0700 (PDT)
Received: from nexussix.ar.arcelik ([84.44.14.233])
 by smtp.gmail.com with ESMTPSA id d16sm15422987wrs.68.2019.05.14.09.18.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 09:18:19 -0700 (PDT)
From: Cengiz Can <cengizc@gmail.com>
To: 
Subject: [PATCH] Documentation: kdump: fix minor typo
Date: Tue, 14 May 2019 19:17:25 +0300
Message-Id: <20190514161724.16604-1-cengizc@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_091821_573373_8F9B3E63 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cengizc[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: cengizc@gmail.com, linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

kdump.txt had a minor typo.

Signed-off-by: Cengiz Can <cengizc@gmail.com>
---
 Documentation/kdump/kdump.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/kdump/kdump.txt b/Documentation/kdump/kdump.txt
index 51814450a7f8..3162eeb8c262 100644
--- a/Documentation/kdump/kdump.txt
+++ b/Documentation/kdump/kdump.txt
@@ -410,7 +410,7 @@ Notes on loading the dump-capture kernel:
 * Boot parameter "1" boots the dump-capture kernel into single-user
   mode without networking. If you want networking, use "3".
 
-* We generally don' have to bring up a SMP kernel just to capture the
+* We generally don't have to bring up a SMP kernel just to capture the
   dump. Hence generally it is useful either to build a UP dump-capture
   kernel or specify maxcpus=1 option while loading dump-capture kernel.
   Note, though maxcpus always works, you had better replace it with
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
