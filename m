Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EAC1C99D2
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 20:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dt39xP5eY3af0HnLuTpVXT9Z1SOopmQDcL+BoyzMW8c=; b=IUjPNS3LGOLOgS
	pbijLgBEPvI41qIVsnVMSVnJWfO2al/PwSIDRTMuzejELgsqGlbWDPKG0Vrk82Ssk3EzCgoZ/gLiR
	zeYE6NJKKoWRi9FSfpXsqC74I+EthHCYjCQau20EKh0nmJu7IRyGIkYE/+zTKBmaAQ5b0XCa/ozQx
	MhhhuhKnXMeDWVGaENwLrbrUCNVC46Cu+TiJwRxSvHriihRZGZ+dSkWXfulE3VNvSQRfoymlTezA4
	HRrqH3wphDRr9AXKJ2Hvq99PrT6khrzWNLw4c94nIpM5Vvlzu0Fki/L+duHeeIqgWjvUX7cCnAHGF
	yS/XDPC7m0q+gcLHFYUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlbo-0007Fc-LR; Thu, 07 May 2020 18:51:00 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlbd-00076w-Qp
 for kexec@lists.infradead.org; Thu, 07 May 2020 18:50:54 +0000
Received: by mail-pl1-f193.google.com with SMTP id t16so2425378plo.7
 for <kexec@lists.infradead.org>; Thu, 07 May 2020 11:50:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NVtq4LDDtvm7cyqcZmZ6iVyVFqaMEGZyo2ntIU6mBx8=;
 b=ovJse42N1Ib8a4TNf4ysUT9wRmreRvzDOsY7GbpdDDNGy/5mr5S90ZmDDC/Ki5Tnay
 5sDudmgIKc5G3UG20X5tRJxwi3QgWRSWWKZis24YP8CRcgIo4wFIaj5B0L6vA1KqYCQo
 hR0TmSfbL0luKQGjDTj+KVUG2EbZjuMLn99RLLrJkwdweybPdeZB1CkOK+uS2XBdcsDq
 fw+CKMCCGwrpejt2cyfeHoADzp6BY9Gj1ashHpfexgG0migsvmyRKsQwsT8y+wsK0cAU
 BMcz5wqNFVZBbw9p7Tessutw/YHcJboocgHNOQcpf988f6qrTGD4IjZNyUrcr8EfPjXj
 VyUQ==
X-Gm-Message-State: AGi0PuYHgYyHXKfyzl47SnAQVrXU5ThSlDplr7U0Ezvv5nDvfkyPtda6
 Okt6J7b2APJaPs4UblEprNs=
X-Google-Smtp-Source: APiQypL/T4pokMBN3BjyJTmEhzQ6U4iO/Je8syJeCy3/7O5YcCFMehZ+kLkFe9ehfbZ5CmV/DTUJmw==
X-Received: by 2002:a17:90a:d808:: with SMTP id a8mr1614734pjv.6.1588877448984; 
 Thu, 07 May 2020 11:50:48 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id ft14sm474731pjb.46.2020.05.07.11.50.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 11:50:47 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 92589403EA; Thu,  7 May 2020 18:50:46 +0000 (UTC)
Date: Thu, 7 May 2020 18:50:46 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200507185046.GY11244@42.do-not-panic.com>
References: <20200507180631.308441-1-aquini@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507180631.308441-1-aquini@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_115049_865395_3CC03A1B 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: rdunlap@infradead.org, keescook@chromium.org, bhe@redhat.com,
 linux-doc@vger.kernel.org, corbet@lwn.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, cai@lca.pw, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 02:06:31PM -0400, Rafael Aquini wrote:
> Another, perhaps less frequent, use for this option would be
> as a mean for assuring a security policy (in paranoid mode)
> case where no single taint is allowed for the running system.

If used for this purpose then we must add a new TAINT flag for
proc_taint() was used, otherwise we can cheat to show a taint
*did* happen, where in fact it never happened, some punk just
echo'd a value into the kernel's /proc/sys/kernel/tainted.

Forunately proc_taint() only allows to *increment* the taint, not
reduce.

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
