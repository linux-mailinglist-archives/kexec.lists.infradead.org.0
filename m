Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758C14DE73
	for <lists+kexec@lfdr.de>; Fri, 21 Jun 2019 03:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDAOtBXhFkbIqGubmji6HhmuRLNxTkX1WnancRgMdu4=; b=JtHZDtP+lFtZgO
	RVq3JmAdKH7K7WeeClDtic42hLMgagtwel0d8ZZs6K/yXTmBoWbJfOpyzJP++sgVk/nXXNGcnf+tX
	A6MCNes6qRKPcRZM3jpHZquIaKRE93fbiyEJeVrG5HY7nptt7AjYKSHaF/jbWn3L8Kq25VzwAhwYx
	jrWFGrDVFOoPY1HT1TRZLHxKRB8e1WQ+2n0XwrGXXH4qw1MMrX4aq+lXUtL8xgdW+cTMJa1K+rS2I
	Ys/ZheBxTQyvoUjkXQPqmeGYau0RzceK9VHOlGdM0l0yZNirD2Omv+7gx4lpuKJvZQ7z6KttZnXVS
	7bPt5pOTEP18ATaWyi0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he8E0-0005Ob-5B; Fri, 21 Jun 2019 01:20:20 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he8Dv-0005Ik-Op
 for kexec@lists.infradead.org; Fri, 21 Jun 2019 01:20:17 +0000
Received: by mail-pf1-x44a.google.com with SMTP id i27so3245316pfk.12
 for <kexec@lists.infradead.org>; Thu, 20 Jun 2019 18:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=t/mH/2CAOnOWxHMVmIaOFtnDHIg0vKk910CbpA/m5hE=;
 b=ZrJDgzp2uG5EFeE4+0LjPFkV0TGUObRy4jaKbEQsMbGFlQmn6fopYXvd1LW8FCJjlf
 xqMgiWJHsarOqLc2NOHcvP5PUfYuofixZBCz9FuBma8aOFOF4vuTt5CRSL4fLm8BVxyR
 rAxZYQJ3kH92QKEWj+SInFl8VP1HMViB/TXI+hKbeI+s34xQyFt73DCMooaFgNRJb+Lg
 NWivhN7v4xaXLLeTEDkh1u5hYzRNZ3BTfnX1d1KRKBiqnCtA4L7i1elgetxINyuQwZNQ
 b8WeC3kT/TTr+6Tac8XSU9ovBR5flmyV+hwqTZ70a5EHt5+aTJNkpBM/Kf4eEWFGAw6t
 3B/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=t/mH/2CAOnOWxHMVmIaOFtnDHIg0vKk910CbpA/m5hE=;
 b=VyjppXIVbIi0z8dTLXpHcW1UcLpO3uJsudXUY6ej7vCgRbzU7q0x2jfoWqPjlgDCuc
 HOiCOJEukCy4xtlrWLuxdEv9AjxhRrT5/xVe1GpYauyVh5pgugoWEr+a/pDpuWA/kOx9
 9RzflX4JTCfYhsiGoALYZCZgUIjlCrlm92suCp6l0P0D22k2vlgG1UftxMrsNMe5lpNU
 Js6vpg8MZEELMVp0NGHAvtNfbD/TaJesHLedDE96DPhoEbfTMAkU4w56P9Vc4qEPcoke
 StSEoOHpno3pV0LlpukPXlbn0Qy71TRiC9/CX0CpwhUZoOCud9i9fAPF+Wy5ktROzQbX
 EW5g==
X-Gm-Message-State: APjAAAW4NqjMqt7qA+hE9Dfgvp0ttn+IZFWvgqTsHkCLJb8WQ9iTln8v
 16DiqJsGxBAu+pHmL347praIg1mOfzU5vLJTksHFsQ==
X-Google-Smtp-Source: APXvYqzxVqdSAIqmyaFpVNbAosUNxFCJA3loM78boAjh/0nuxooUctORb4Dj+NHACmdIFlF6J9m5m/dkrFISvkP8/LXfHg==
X-Received: by 2002:a63:f4e:: with SMTP id 14mr15526503pgp.58.1561080010211;
 Thu, 20 Jun 2019 18:20:10 -0700 (PDT)
Date: Thu, 20 Jun 2019 18:19:20 -0700
In-Reply-To: <20190621011941.186255-1-matthewgarrett@google.com>
Message-Id: <20190621011941.186255-10-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190621011941.186255-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH V33 09/30] kexec_file: Restrict at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_182015_825454_B2DF68B1 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jiri Bohac <jbohac@suse.cz>, linux-api@vger.kernel.org,
 linux-security@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Matthew Garrett <mjg59@google.com>,
 David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Jiri Bohac <jbohac@suse.cz>

When KEXEC_SIG is not enabled, kernel should not load images through
kexec_file systemcall if the kernel is locked down.

[Modified by David Howells to fit with modifications to the previous patch
 and to return -EPERM if the kernel is locked down for consistency with
 other lockdowns. Modified by Matthew Garrett to remove the IMA
 integration, which will be replaced by integrating with the IMA
 architecture policy patches.]

Signed-off-by: Jiri Bohac <jbohac@suse.cz>
Signed-off-by: David Howells <dhowells@redhat.com>
Signed-off-by: Matthew Garrett <mjg59@google.com>
Reviewed-by: Jiri Bohac <jbohac@suse.cz>
cc: kexec@lists.infradead.org
---
 kernel/kexec_file.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index 67f3a866eabe..455f4fc794f3 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -239,6 +239,12 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
 		}
 
 		ret = 0;
+
+		if (security_is_locked_down(LOCKDOWN_KEXEC)) {
+			ret = -EPERM;
+			goto out;
+		}
+
 		break;
 
 		/* All other errors are fatal, including nomem, unparseable
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
