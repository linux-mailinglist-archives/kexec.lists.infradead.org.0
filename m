Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AB2176DB8
	for <lists+kexec@lfdr.de>; Tue,  3 Mar 2020 04:57:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bmqspEnapACnH+UOhjrnQGAzeFwdgY5+jleTdwRTOSY=; b=CxI9Zj12rmJb/t
	Jc/RiXjfcy3z7u+Y4fEBbDsxxqTQzqHNynrf30uKZVLoZdv+vTUincBCiC507kAZMi3uXsyqPIp1A
	pBLCP4JsJROfnmserGNUo/wWMOn+57oddE/o+p8R1HG9bsExx+suMAyyGZUyBoHgD0FpvAeIqJxd2
	d+kokmwM5XrIid0JM9OqP4cSA0NQ7/f1FrdocUmZfp0WudbnB138jksyJHpwyqc0NokahRKsuJoGv
	t4wQLK+mU7Yox095/DhD0UYWUy7nVkscBaDcUJW7Hhv5w+mFd6hhl9IDIsfq37ouoCq2a6BO64z8e
	ZTDM32in91wE49/lcNkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8yg2-0007xt-LM; Tue, 03 Mar 2020 03:57:02 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8yfw-0007xS-5l
 for kexec@lists.infradead.org; Tue, 03 Mar 2020 03:56:57 +0000
Received: by mail-qk1-x741.google.com with SMTP id e16so2097979qkl.6
 for <kexec@lists.infradead.org>; Mon, 02 Mar 2020 19:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=0wjl77fFJFFUS5kkoKjQSRiGt56VoJs72hNCnR0DGGk=;
 b=KdUDZblC/PIz3Qsb1nx0QkkrVhv+zfukPaRd99dexNCUY78atoUASqiYmbvM7GOyLm
 u+tIDEeWD8FsyZc+2k8DicGUXcV9Qixhu/OyFpbXabuDuvipLdAv9WYFwZHql3ubxXtp
 M6kiUHHXyJzJIIl/M0gIWhFbk+c7BuBJ0/KjZ6lyz+LM/3vq7TCDTNJKh6yPx0lxhqIp
 H2hLKAE+3JWykZHgxrQ09c9b0kxVliya+CuorAOByhczd5mMVhqjE8ibD11xm64GoO+s
 O65nbRkOQ50d6RM5w2ZNE05imBBLCKIIC751Gkc4p1zeBxy7K51O+rV/sioMc0dz8ndJ
 NwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=0wjl77fFJFFUS5kkoKjQSRiGt56VoJs72hNCnR0DGGk=;
 b=GK5XNX/O46sGRbnTfOmGfhGfmztDwOjbV24G5vFdig/h+2n7yQlm1uLMcluTI1813A
 AwXDs/5ZMaQKlrqKBzm+uC9ix/84POTKP5EjZ1O46n43qEPa3EQ7uZsmRp1frWT1vWvg
 KxJdyN/5PETa29vRDl7SPpGZvpCVOdIXHVJD76eYTuTkuu1bn18EL/x++rA5W9FXjJp2
 bXF9cAD9nRn8w5gDMRAwuDYt5R7sFdckB2eZuw+9ImRzg7hO69eer/uCuYZVQTsL+hvc
 JlV0v8LveIRPQ7b9f/W3pmHKvMxlAE9WkUHYRdhx3sXvYKJa5y8bO4jj48PidUznAHbW
 EsRQ==
X-Gm-Message-State: ANhLgQ0gRiAcYjmweGsBSOX8OrWdxLuoX8ZPn0hdVM4Oz5633a85qZX/
 0vPPjRDAyxDF5YmV88d54+BgvesIZ6AC2g==
X-Google-Smtp-Source: ADFU+vs/jN/0qIOhMwj4KlyOvbrAuS2kokVJWoHY+TCrwz9jX1uwzXkGkdbSoMHyAJ7Scpk7c+qeUA==
X-Received: by 2002:a37:688f:: with SMTP id d137mr2301760qkc.54.1583207814348; 
 Mon, 02 Mar 2020 19:56:54 -0800 (PST)
Received: from kexec.lxd ([177.89.9.179])
 by smtp.gmail.com with ESMTPSA id z6sm11243855qka.34.2020.03.02.19.56.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 19:56:53 -0800 (PST)
Date: Tue, 3 Mar 2020 03:56:49 +0000
From: "Leonidas S. Barbosa" <kirotawa@gmail.com>
To: kexec@lists.infradead.org
Subject: [PATCH] Removing condition that will never be met after calls
 xmalloc and xrealloc
Message-ID: <20200303035649.GA726@kexec.lxd>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_195656_243274_FA5B83F3 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kirotawa[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: horms@verge.net.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

Looking in the kexec-tools code I found these conditions that
seems will never be met. Not sure if that was intentional for explicitity,
if it was the case, please disconsider this patch.




xmalloc and xrealloc when fails calls die() that calls exit(1).
Checks for if(!memory) after they are called will never be met that
condition, since the process will be exited after an allocation fail.

Signed-off-by: Leonidas S. Barbosa <kirotawa@gmail.com>
---
 kexec/arch/arm/kexec-zImage-arm.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/kexec/arch/arm/kexec-zImage-arm.c b/kexec/arch/arm/kexec-zImage-arm.c
index f9d452f..9845925 100644
--- a/kexec/arch/arm/kexec-zImage-arm.c
+++ b/kexec/arch/arm/kexec-zImage-arm.c
@@ -228,11 +228,6 @@ int atag_arm_load(struct kexec_info *info, unsigned long base,
 	struct tag *params;
 	
 	buf = xmalloc(getpagesize());
-	if (!buf) {
-		fprintf(stderr, "Compiling ATAGs: out of memory\n");
-		return -1;
-	}
-
 	memset(buf, 0xff, getpagesize());
 	params = (struct tag *)buf;
 
@@ -315,8 +310,6 @@ static int setup_dtb_prop(char **bufp, off_t *sizep, int parentoffset,
 		dtb_size += fdt_node_len(node_name);
 		fdt_set_totalsize(dtb_buf, dtb_size);
 		dtb_buf = xrealloc(dtb_buf, dtb_size);
-		if (dtb_buf == NULL)
-			die("xrealloc failed\n");
 		off = fdt_add_subnode(dtb_buf, parentoffset, node_name);
 	}
 
@@ -340,8 +333,6 @@ static int setup_dtb_prop(char **bufp, off_t *sizep, int parentoffset,
 	if (fdt_totalsize(dtb_buf) < dtb_size) {
 		fdt_set_totalsize(dtb_buf, dtb_size);
 		dtb_buf = xrealloc(dtb_buf, dtb_size);
-		if (dtb_buf == NULL)
-			die("xrealloc failed\n");
 	}
 
 	if (fdt_setprop(dtb_buf, off, prop_name,
@@ -616,9 +607,6 @@ int zImage_arm_load(int argc, char **argv, const char *buf, off_t len,
 		uint64_t start, end;
 
 		modified_cmdline = xmalloc(COMMAND_LINE_SIZE);
-		if (!modified_cmdline)
-			return -1;
-
 		memset(modified_cmdline, '\0', COMMAND_LINE_SIZE);
 
 		if (command_line) {
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
