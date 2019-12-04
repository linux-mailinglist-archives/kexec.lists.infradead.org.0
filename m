Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E080112F29
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 16:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7l52xuaL3fjsXSdGIEgd7TpV2rmURh9YfInbBCLz5Nc=; b=SBOe1W3vc/UM1o
	ZZxQ0RqAvwduzGe5t1uMYjtJHPnGPziYQzKIRhMzdswjVyiI5pmBfGuTV5biEiEgQ9iQrrWfyRhBQ
	GbygzUzAG/nWsW5jou4/v+Jlu1qDSzDQeA5PndIwzXsPvSWBUJ15FGaUUiaqJ9JbYWZXpyXYKHv6A
	gafflUV4Cw96DgaHr7aJcMiACdnF+sudA+eC/VybpbDVmcIaTzWsmG+eP/f8lMNmERCgstAlWtFjM
	tAISQtVgUQ3nCper9bz7C2b+aPIac3KLvNaqFKEbKVDoL6cRl3J/+4dPZKYcKuWOwIB/PALy0a2HG
	Wo0kvI5yo+02eIJIzW7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX49-0007Iw-Uf; Wed, 04 Dec 2019 15:59:49 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX44-0007G0-Qc
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 15:59:46 +0000
Received: by mail-qk1-x744.google.com with SMTP id f5so298341qkm.13
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 07:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=qBcLX2nsb5/KJrXmAdZJZWt+pM1z+3tYC2JPC3UMBs8=;
 b=o8I+WyKVJqvU6pwBBmPvlwEgfrNAEk4GlYMzitCRr179qPaMpPv/Dsf4RkzNVOlWbj
 SJtTzHuGepA5AFsEpqT2l8HQvW8RyrkGvHmGT4cczfTeeoOGcOTCg3hmg4mGwvsyk2fO
 hVVTKnnabhrr6kUqDnPj9LO3g64XfrwcmnpbRIYHSWIPsQZ+VTvCmCGhjS4uWz8KW+jE
 r2tBKt+5dh4dAw1tfkanz5dGvcgPMAwaczJWITsGCOabbajiT+q35hete04JyPLxcINt
 Rknlv8ifyhk2/6/N5SvtCMHoFTVUc/64uBMV9TEhm+L9zO4lcNPZgOHo6T81EbgmcPaT
 oV8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qBcLX2nsb5/KJrXmAdZJZWt+pM1z+3tYC2JPC3UMBs8=;
 b=T5E1HPf+NxdE3iSfWrVAK0cX7D/+EA62nizuZwmH5cwOb2pxFUfJRwJmLNdIguuX6I
 72eLi0X79yfUKVw98Cvn8qPTuqcs/JVrL2oBVOXaH8TpUBmcss+xTpOEo8K1wM4g235t
 EFUCZU+xKlJcSC7Ehk/KFgI0bRUcFOxPUD4vSIwp7OseyiWxWDya4SzE55xNXwlHk45U
 tmpzhY/ZTAUTV7VTyR66F8vgKrkC6XAZzckFPfZ+uVZgNc2g5+GMrCUYlEFdW/+7ebUM
 6szCNt4d99etvNqKmVqIHY28BaktpyFzXPSUKsbzaZDiR2ZNs3YCNPydauU1Ls4TTOMl
 nqiQ==
X-Gm-Message-State: APjAAAWhO/vpOdGf/8KABLk+X1xtn5jU29f+xmThoPBpDBrzKkZHUTBB
 95FnikUMYJPf/dUnNCtz/21Rcg==
X-Google-Smtp-Source: APXvYqx+YMl+m84asmEHoO0Kw7pl99uqkPfePC/y7TScpNcsYrQoGCWoBXTxiv8VGxyurKQil3dt6Q==
X-Received: by 2002:a37:a40d:: with SMTP id n13mr3808120qke.167.1575475182344; 
 Wed, 04 Dec 2019 07:59:42 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:41 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 01/25] kexec: quiet down kexec reboot
Date: Wed,  4 Dec 2019 10:59:14 -0500
Message-Id: <20191204155938.2279686-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075944_872951_858394E4 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Here is a regular kexec command sequence and output:
=====
$ kexec --reuse-cmdline -i --load Image
$ kexec -e
[  161.342002] kexec_core: Starting new kernel

Welcome to Buildroot
buildroot login:
=====

Even when "quiet" kernel parameter is specified, "kexec_core: Starting
new kernel" is printed.

This message has  KERN_EMERG level, but there is no emergency, it is a
normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

Machines that have slow console baud rate benefit from less output.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Simon Horman <horms@verge.net.au>
Acked-by: Dave Young <dyoung@redhat.com>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 15d70a90b50d..f7ae04b8de6f 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1171,7 +1171,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
