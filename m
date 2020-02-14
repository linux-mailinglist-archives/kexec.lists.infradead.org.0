Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71DC15CFAE
	for <lists+kexec@lfdr.de>; Fri, 14 Feb 2020 03:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EcOAUC9zUNjU3FjgXEWPgsjKbjkqKO9w51lcCpv257E=; b=TyWUBr2/WJiqOz
	XZCZAjicLxK4Je59CbzrVMqxJGuUzKhC75bCVrGAgp7Tz7COI0lX6Z6PR27vOu7f5cYPaAPd4Rad6
	YjCyefQRZOVaO9Xhis7+FYJPJWja0molsgjmxEMKWeQ/JsaEItUcUa2OeiZ85bxse44NdhfVJvYnL
	aaqli16qIMMkefdN8Gm3L+FQuG+znK0usrNFzsuD8y5uJ8lBr+WINuJ/DPDakaz69LBZCHiU6WDrq
	lgZF3JSzUSwPFzQ0YiMuIbXBvt32gN9yhFKRAZ7cycc70/8Fj5a6aZsOoo5K0t3biTe6am1UoBA60
	rRfqnBTyPadrBTDjMq5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2QQI-0005YZ-EY; Fri, 14 Feb 2020 02:09:42 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2QQF-0005Y5-EY
 for kexec@lists.infradead.org; Fri, 14 Feb 2020 02:09:40 +0000
Received: by mail-pj1-x1042.google.com with SMTP id dw13so3196638pjb.4
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 18:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r2TroXA0yUI8fmWitO9N7P1hbpfN+w2qKJ2a2K3uBEs=;
 b=sru0PbvOJAEZZXTDaGXULSnWwdXKguUxzS3d4INf7nRpZZNUJEw5pvsk3qe8a91kCY
 nCAGD3OVgkkMTpr1uW0SUvWgqW9ITpkjgeiXedjFqp30lJJbk/r1MSqzhS1T47/3kY5S
 aoNi0r+WCHSGznV5AGXG5lUPuwYXUx5iGdxBXJDRlEB+G/1haaG5PJGu4eWauH52YXiy
 wi4ou8UWvSxxoeRDOU3VqM5wNn5V3oJUwFWX6pcZPLcKFLIDco12qSB84VBJmyNBHAri
 rub5CShxxQ0j4TA8hZQgxi+uIvjjUbSCfDGX7j9XQzSsTQ/XFmRmjpQwHF93JMyE2hP4
 YT3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r2TroXA0yUI8fmWitO9N7P1hbpfN+w2qKJ2a2K3uBEs=;
 b=k0NkTWwXQiORDYQStsFzsQzI09mz2vcMfsfIGRn7shYIOShFW1rn11zuziACExyxiQ
 kxqYidSflvTtiZCSnqbqDJlPKrPLEnV/s+7I8y+v5aClsJ16T7I/37BLFNO/vfCYCurY
 pvtaUnQ4eNYUgyuGCXMIIrT8WL4ettVImmpo/t+P3vhpVRBREZWq9M4/ODrP6zBjJW00
 mONDtUu+WrS1go3VmM1Gm9VRyvEj2niUToXp0IWwwDCRUYrg1xLJ2aE3XXFlmtVq+2/v
 RaR8m+tTPjPDfwmcl8K7i5KfpmsGh8owf3S7a1DhRQOuspaDkSQampwO06EFH0UP3dUB
 8E0A==
X-Gm-Message-State: APjAAAUe8OUx/QJ1NtCDeWxBB/4ReVZ8XR1B2CBBPlb1ZiM+/VwW9as+
 845P8cnAAVUKUTuc92I+Ulo=
X-Google-Smtp-Source: APXvYqxXhys7hv2UAeS14KIOC/GApmukghj6i/r05NQrkHj9Q9QVNPxHcHkih0LuhLdWFJm4o+0HTA==
X-Received: by 2002:a17:90b:1245:: with SMTP id
 gx5mr593150pjb.105.1581646178190; 
 Thu, 13 Feb 2020 18:09:38 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id 72sm4835507pfw.7.2020.02.13.18.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 18:09:37 -0800 (PST)
Date: Fri, 14 Feb 2020 11:09:35 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
Message-ID: <20200214020935.GF36551@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <20200213090757.GA36551@google.com> <87v9oarfg4.fsf@linutronix.de>
 <20200213115957.GC36551@google.com> <87pneiyv12.fsf@linutronix.de>
 <20200214014113.GE36551@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214014113.GE36551@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_180939_514328_7A804BA5 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky.work[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On (20/02/14 10:41), Sergey Senozhatsky wrote:
> On (20/02/13 23:36), John Ogness wrote:
[..]
> > We could implement it such that devkmsg_read() will skip over data-less
> > records instead of issuing an EPIPE. (That is what dmesg does.) But then
> > do we need EPIPE at all? The reader can see that is has missed records
> > by tracking the sequence number, so could we just get rid of EPIPE? Then
> > cat(1) would be a great tool to view the raw ringbuffer. Please share
> > your thoughts on this.
> 
> Looking at systemd/src/journal/journald-kmsg.c : server_read_dev_kmsg()
> -EPIPE is just one of the erronos they handle, nothing special. Could it
> be the case that some other loggers would have special handling for EPIPE?
> I'm not sure, let's look around.

rsyslog

static void
readkmsg(void)
{
	int i;
	uchar pRcv[8192+1];
	char errmsg[2048];

	for (;;) {
		dbgprintf("imkmsg waiting for kernel log line\n");

		/* every read() from the opened device node receives one record of the printk buffer */
		i = read(fklog, pRcv, 8192);

		if (i > 0) {
			/* successful read of message of nonzero length */
			pRcv[i] = '\0';
		} else if (i == -EPIPE) {
			imkmsgLogIntMsg(LOG_WARNING,
					"imkmsg: some messages in circular buffer got overwritten");
			continue;
		} else {
			/* something went wrong - error or zero length message */
			if (i < 0 && errno != EINTR && errno != EAGAIN) {
				/* error occured */
				imkmsgLogIntMsg(LOG_ERR,
				       "imkmsg: error reading kernel log - shutting down: %s",
					rs_strerror_r(errno, errmsg, sizeof(errmsg)));
				fklog = -1;
			}
			break;
		}

		submitSyslog(pRcv);
	}
}


So EPIPE errno better stay around.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
