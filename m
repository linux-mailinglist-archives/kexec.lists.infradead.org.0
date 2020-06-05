Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5B81F0188
	for <lists+kexec@lfdr.de>; Fri,  5 Jun 2020 23:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZvPvwhNVxpohmnAsuW4ncVEdVM79kMaJFoS/qTejW8=; b=gOy3suyFjETrPO
	o/v7X9H5ldgaFYOBOFcqDlKvSAWfYbg0oM67UWsyV3UXw2OHHVA5x/CUZ1UoffTxwXzbO0KAXBpaB
	NjHfie0GyDXly7Wwb8DKgyFrpXYs66af45D+DCf5fdPnLLKGQIhRz7TGtQcLBEwAbgkGVGa5delHd
	xwxQHnli7xwHBk5HvO8tBeYPhUPaSOpROYvAe1e09MsDK0YcDofI7wI7TzAJfZ9YeOOXRMYUvrapf
	bSPTO6HKNr8wshVM6XQTdVNh7ydzUicKwr9KQfEQA5h/kJE3u14kfoWRZ+zNzgb2Ldl9QuHuwMNy4
	WpI9/BbmwJlfnYQDSifg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhJrP-0002ZQ-Qu; Fri, 05 Jun 2020 21:26:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhJrM-0002XX-CW
 for kexec@lists.infradead.org; Fri, 05 Jun 2020 21:26:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id y18so4199350plr.4
 for <kexec@lists.infradead.org>; Fri, 05 Jun 2020 14:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VeRb96m3xb6MVLzkZ/9bi8Q4G4C90sZuPgPUM9psnlg=;
 b=g6yt5mowRomsCxHiTj+rCKQTPIaAlRT3+6FakMUq17fUAUSWHCWdqhopSjjJkFIDA5
 dfGjWJilOucVdz4mqVU7cY+rQEki0+UNYc/UVTAG3xfptu0L1WsBJMzErpMNcjTeoyGy
 ZG4IzyxBW7zpLK2FoAUiqwNhUmpEqqjumjDtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VeRb96m3xb6MVLzkZ/9bi8Q4G4C90sZuPgPUM9psnlg=;
 b=KemwfQilEAgyMDl5aoQ198HO/eeTM01GhRFa67JVtTJsqykRs5VzPlNeNJo40ATpvy
 znIFQjIT6eGNm2msFCAmUYEBtYYcqd294F08Tk6W0DI/S6vlMrzzS9A9IWWXpQmA3wtd
 GD+mjp0DcDMZbTR3TRHBvlZjsIHByKxYkIucQs4+tLqFWMkyGQGLPy2YDeeYGCAa3Ubg
 Ch1E0yOwOFAE3LJRRS3piIPfHYlDgrkkt74jMvf1AZIn7aaRGMxubidnCE3pgZ3ZB1dn
 DPr1BLeo6jxCqs/LpuzPAySEM3Kawoq6x8xUrHpSZ39+XHmwyXFq7TEylRn2h4Bz+bCO
 tkPA==
X-Gm-Message-State: AOAM532bxea4rwkTSmgr/rz41fWi0xmjgjrgnFK9X6+RRCvn3oEWOaOf
 SiVOiHNMElXTBk5Grg7HcLZhAg==
X-Google-Smtp-Source: ABdhPJw0V3kMeUm0jvO13avWqD+DqRkUeahiiWaS1x3LL2XqbIN2sZ84eMR0ycj8tzYPERJRxmEJ8g==
X-Received: by 2002:a17:90a:ac0f:: with SMTP id
 o15mr5167862pjq.105.1591392398559; 
 Fri, 05 Jun 2020 14:26:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o18sm528652pfu.138.2020.06.05.14.26.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 14:26:37 -0700 (PDT)
Date: Fri, 5 Jun 2020 14:26:36 -0700
From: Kees Cook <keescook@chromium.org>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH] kexec: dump kmessage before machine_kexec
Message-ID: <202006051426.4F06C696@keescook>
References: <20200605194642.62278-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605194642.62278-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_142640_441086_FDECE23A 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sashal@kernel.org, pmladek@suse.com, tony.luck@intel.com, anton@enomsg.org,
 kexec@lists.infradead.org, jmorris@namei.org, linux-kernel@vger.kernel.org,
 ebiederm@xmission.com, ccross@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 03:46:42PM -0400, Pavel Tatashin wrote:
> kmsg_dump(KMSG_DUMP_SHUTDOWN) is called before
> machine_restart(), machine_halt(), machine_power_off(), the only one that
> is missing is  machine_kexec().
> 
> The dmesg output that it contains can be used to study the shutdown
> performance of both kernel and systemd during kexec reboot.
> 
> Here is example of dmesg data collected after kexec:
> 
> root@dplat-cp22:~# cat /sys/fs/pstore/dmesg-ramoops-0 | tail
> ...
> <6>[   70.914592] psci: CPU3 killed (polled 0 ms)
> <5>[   70.915705] CPU4: shutdown
> <6>[   70.916643] psci: CPU4 killed (polled 4 ms)
> <5>[   70.917715] CPU5: shutdown
> <6>[   70.918725] psci: CPU5 killed (polled 0 ms)
> <5>[   70.919704] CPU6: shutdown
> <6>[   70.920726] psci: CPU6 killed (polled 4 ms)
> <5>[   70.921642] CPU7: shutdown
> <6>[   70.922650] psci: CPU7 killed (polled 0 ms)
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
