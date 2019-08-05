Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB10814A2
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 11:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LxCRczPkkB9jXdKrDhGmZ/2l7TjuZZT5M981sVwWm9I=; b=JBuXyGuepv/2FtlIPz9N2dM+9z
	KOB7/PSTrFQ3p/0kg3SFtY4+E+kzHuHiINWdgBE0uIF+R5PjTcXDbI7fZ67Ti2RHv7wVBOnk0JkFt
	o/Z2WHZhBBXzszhMX/JbVkj0KB7RQhIR8FRGDt2+ME1FkmD+UlzY0xOS0LKYImTJRK0DzT3swJATB
	bGkkkbLBxhC0l7OfahpjBhtZdvsXIlQjr5sK97FP6QxtJdO3E+qaOsTFV7XXa2q9eXuOUrpIm6jUc
	NL4yDj+cdMH6nJLUdnHDFeFl7ecbxB7HB11G/+aG/QQe+C34ZAA8rmc9ytJjzb4ZxpptN+/ej4bO+
	s4eBIF2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYrV-0008FA-LB; Mon, 05 Aug 2019 09:01:01 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYqI-0006KH-KM
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 08:59:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so36186284plr.11
 for <kexec@lists.infradead.org>; Mon, 05 Aug 2019 01:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+678Xv5ru8PcQuczzEyKD2Pw0q4hQ1y6t38q+jHCNZs=;
 b=SETFWpf1pGWtdko7OtD3ayrl1WSWedVCqelsWrsXNZD7qdtqrydYeUvt63gQf8c0XW
 2+qLly9qS7DXaxGBuiX0VA9GT8sX+E95/H/rv5RUnLOLlnVSRlMwnKjLyNS5zK7ldl+d
 +Df+R1Uij9BXHLr3qt1EkzXxccWtwqFGVe6Noxl8C3d1Nb6gX3W7t1HXHGSDEOA/JFpL
 VachMO2puIbrAXTcvnHjcCGTY1AYuxhDwWX5saQ6jfWykaZgk9GyBYrg5ssHv/Dk5H7y
 QzjwMR97gjFqrxR+wH7OjviZX0crivWjBmWoS3dgeMb+RuiG13HlJFY6zffoBjJIf1Ix
 JErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+678Xv5ru8PcQuczzEyKD2Pw0q4hQ1y6t38q+jHCNZs=;
 b=qG0/uVeINrnP3MmxD0RpZk731yWckNpqp8iHYE/w2nKUs58NRlEx8QZXSdelP0YW+s
 EzgBBxkVIUdZB5bXLrkvInSVYtss49BqIxHq13eWf16zJ3jhIMh/7yezmRXx7l2FdsfS
 54blsFKhQo//ORw9eUfFu5gIGQZoodJETyJr095PXxbQTVBHPrHLPgGhochM2lNOp8Nw
 x8etrL4mIr/r7RLplcgweBLDZqMpXmNV5Iac3ju8hXTTlUAZ969eAeSreZMxaQIB0UpX
 J4SCKAkUbbc+jOIFvl2TANc7y1pquQcW1AWDl1ObtR82SWCM7P9rD41ExNQpfs9ut3jo
 R6TA==
X-Gm-Message-State: APjAAAW4dDrNDmssYIZNy13om5izMzsG57eVQda2qt5wKUCaLKnLVOs9
 7RhaS9lXJGP6vyVBTXxv2w==
X-Google-Smtp-Source: APXvYqyybjEoyBO34PmwMvc8RZn1OZ7z3xl+R3cQYmnXM9isVLFEBCUP3xP72xI2C2JnYZZTInBU7g==
X-Received: by 2002:a17:902:324:: with SMTP id
 33mr139155465pld.340.1564995585890; 
 Mon, 05 Aug 2019 01:59:45 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id v184sm82428375pfb.82.2019.08.05.01.59.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 01:59:45 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 x86@kernel.org
Subject: [PATCH 1/4] x86/apic: correct the ENO in generic_processor_info()
Date: Mon,  5 Aug 2019 16:58:56 +0800
Message-Id: <1564995539-29609-2-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
References: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015946_705394_CB0DE90D 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacob Pan <jacob.jun.pan@linux.intel.com>, Baoquan He <bhe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, kexec@lists.infradead.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Michal Hocko <mhocko@suse.com>,
 linux-kernel@vger.kernel.org, Pingfan Liu <kernelfans@gmail.com>,
 Daniel Drake <drake@endlessm.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Masami Hiramatsu <mhiramat@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Qian Cai <cai@lca.pw>,
 Dave Young <dyoung@redhat.com>, Vlastimil Babka <vbabka@suse.cz>,
 Eric Biederman <ebiederm@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When capped by nr_cpu_ids, the current code return -EINVAL or -ENODEV. It
is better to return -EINVAL for both cases.

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Peter Zijlstra <peterz@infradead.org>
To: x86@kernel.org
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Qian Cai <cai@lca.pw>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Daniel Drake <drake@endlessm.com>
Cc: Jacob Pan <jacob.jun.pan@linux.intel.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Eric Biederman <ebiederm@xmission.com>
Cc: linux-kernel@vger.kernel.org
Cc: Dave Young <dyoung@redhat.com>
Cc: Baoquan He <bhe@redhat.com>
Cc: kexec@lists.infradead.org
---
 arch/x86/kernel/apic/apic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/apic/apic.c b/arch/x86/kernel/apic/apic.c
index f529136..f4f603a 100644
--- a/arch/x86/kernel/apic/apic.c
+++ b/arch/x86/kernel/apic/apic.c
@@ -2346,7 +2346,7 @@ int generic_processor_info(int apicid, int version)
 			"  Processor %d/0x%x ignored.\n", max, thiscpu, apicid);
 
 		disabled_cpus++;
-		return -ENODEV;
+		return -EINVAL;
 	}
 
 	if (num_processors >= nr_cpu_ids) {
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
