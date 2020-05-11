Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3411CE28B
	for <lists+kexec@lfdr.de>; Mon, 11 May 2020 20:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dJBijsA18vBfRoq22XGKFVyyn3oUHLFxwqG615gOFA=; b=ulc1FDcYHp/Hct
	jRQ6wenkIDZk25d1Hrg/e9VFcj2ztpnCbiQvDEnNW3gIr7y5JsybUHTQVgB6TGQ5mxaAbtyXSqih7
	+AWsetbhdSPVPy4k7ZbdnHa9xPKPkUwuNTKuPTQpZBlvOQESBdX1qBPrYh/xM67HBapizbtpOXxlH
	tuBQK5J6UwqqbIXDYIVdbZixfsRUutiaGlNQR1IGvQ4g/zucJh915sAQ6cFhIVHoyeYaFZpwtJIIb
	HyL9iqsxpz2ReQFmTvc9SUxLtLbU9IObYmNAEwIAhq+b32XKxEZbxkAo2bFYYhPFHgIOdc6q4nEQb
	A4tvlDwZSiz8r+/ebk+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYD6t-0003vr-Db; Mon, 11 May 2020 18:25:03 +0000
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYD6p-0003sR-Al
 for kexec@lists.infradead.org; Mon, 11 May 2020 18:25:00 +0000
Received: by mail-pj1-f66.google.com with SMTP id q24so8190972pjd.1
 for <kexec@lists.infradead.org>; Mon, 11 May 2020 11:24:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gzjYF0ep8XMaeJksKcr1mwS/Ul5KRJgBfVKTrx7XdJ8=;
 b=bDWbW1fCPOR3Rb8T5dLRpVnO4nOS+YOyBLqgDXDW3Q2Ab3pA+RprI6CUeHEqWjyYAI
 57tITrpjOw2CByZk87vHJaIgFuq0kmHFyxxyVYqVNFbkBQZy1MESNZGq0T+K+KRn+WpU
 EQ4tQ1wuzn8CxvoZpYXRn5PxPJudVp8d6y6AqzQMO8mpVNKRap2UBAIFOAgFCSFw3PpJ
 x07IkzS85HU7nsZhmSPLMLIY7Hz6waJOtIdoIyWcPc3YLyX3ZFE2D20iWtPF4eJkj4rA
 DITO02oD9vbC6xjulp5/XB0QVQj8pXKmRM/k3dwktDPzKwgtRQ6CdKh0iAxqsA8cLBMe
 EiDA==
X-Gm-Message-State: AGi0PuZdiuUXeXelV1r/y0rcpM6MmsGtLcBCoqMtQOFQ0pZnox9clwxb
 njZADh3uFsm2f9NiEBKR+zw=
X-Google-Smtp-Source: APiQypKPXNbqjUaKuNkDw/NfTC1wA3JKFcVH3i5a3y/+Dd5/xFN9T+yDEPZ7DD1beXNuM8j6Z44Wqw==
X-Received: by 2002:a17:902:8e87:: with SMTP id
 bg7mr16102782plb.91.1589221497577; 
 Mon, 11 May 2020 11:24:57 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id k6sm10585413pju.44.2020.05.11.11.24.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 11:24:56 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 62A1240605; Mon, 11 May 2020 18:24:55 +0000 (UTC)
Date: Mon, 11 May 2020 18:24:55 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v3] kernel: add panic_on_taint
Message-ID: <20200511182455.GR11244@42.do-not-panic.com>
References: <20200509135737.622299-1-aquini@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509135737.622299-1-aquini@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_112459_370530_CEE5F0FD 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-doc@vger.kernel.org, tiwai@suse.de, jeffm@suse.com, bhe@redhat.com,
 corbet@lwn.net, labbott@redhat.com, dyoung@redhat.com, AnDavis@suse.com,
 rpalethorpe@suse.de, keescook@chromium.org, jikos@kernel.org, cai@lca.pw,
 bunk@kernel.org, tytso@mit.edu, jeyu@suse.de, gregkh@linuxfoundation.org,
 rdunlap@infradead.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 09:57:37AM -0400, Rafael Aquini wrote:
> +Trigger Kdump on add_taint()
> +============================
> +
> +The kernel parameter, panic_on_taint, calls panic() from within add_taint(),
> +whenever the value set in this bitmask matches with the bit flag being set
> +by add_taint(). This will cause a kdump to occur at the panic() call.
> +In cases where a user wants to specify this during runtime,
> +/proc/sys/kernel/panic_on_taint can be set to a respective bitmask value
> +to achieve the same behaviour.
> +
>  Contact
>  =======
>  
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 7bc83f3d9bdf..4a69fe49a70d 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -3404,6 +3404,21 @@
>  	panic_on_warn	panic() instead of WARN().  Useful to cause kdump
>  			on a WARN().
>  
> +	panic_on_taint=	[KNL] conditionally panic() in add_taint()
> +			Format: <str>
> +			Specifies, as a string, the TAINT flag set that will
> +			compose a bitmask for calling panic() when the kernel
> +			gets tainted.
> +			See Documentation/admin-guide/tainted-kernels.rst for
> +			details on the taint flags that users can pick to
> +			compose the bitmask to assign to panic_on_taint.
> +			When the string is prefixed with a '-' the bitmask
> +			set in panic_on_taint will be mutually exclusive
> +			with the sysctl knob kernel.tainted, and any attempt
> +			to write to that sysctl will fail with -EINVAL for
> +			any taint value that masks with the flags set for
> +			this option.

This talks about using a string, but that it sets a bitmask. Its not
very clear that one must use the string representation from each taint
flag. Also, I don't think to use the character representation as we
limit ourselves to the alphabet and quirky what-should-be-arbitrary
characters that represent the taint flags. The taint flag character
representation is juse useful for human reading of a panic, but I think
because of the limitation of the mask with the alphabet this was not
such a great idea long term.

So, I don't think we should keep on extending the alphabet use case, a
simple digit representation would suffice. I think this means we'd need
two params one for exclusive and one for the value of the taint.

Using a hex value or number also lets us make the input value shorter.

If a kernel boots with panic-on-taint flag not yet supported, we don't
complain, therefore getting a false sense of security that we will panic
with a not yet supported taint flag. I think we should pr_warn() or
fail to boot when that happens.

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
