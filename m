Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26330177E3A
	for <lists+kexec@lfdr.de>; Tue,  3 Mar 2020 19:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5/OFeXi7LjD6fbpFhl6deXX8sEuVfvFOI09940SDKvw=; b=hHb/swhdt1bmBl
	xZFCA4mOqonYbcvBoPh+IWDjOZlVwTSYY1ksxVCyQyNL8NqUhAvnoEDk6S3AopeL3gCynbvP/xf88
	TH5bjNP+n/PYzWFVh15FeBWBf9bJtJXJVaOpcCqmkoDzlLpLi5a1S+3xGGwnGQvBOtOlweLdpidY8
	YpMGTifMKw0iRMvRzovo+DdeeOBN6SGSNbtnHR554JaH1SxtqCSTv9OxCdY7HbpTz6qnahquPVJSz
	qbHpYV0zNejksjtlsAfHUkA6zkegcskGRFYLpG/89dfz/mmzWrm2ZoAA5+IHQ2FHGg3DNX/ZpaVfO
	Frma9X3TBPVpZT+CMVPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Btb-0001WR-Gw; Tue, 03 Mar 2020 18:03:55 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9BtY-0001VI-Ol
 for kexec@lists.infradead.org; Tue, 03 Mar 2020 18:03:53 +0000
Received: by mail-il1-x144.google.com with SMTP id p8so3551908iln.12
 for <kexec@lists.infradead.org>; Tue, 03 Mar 2020 10:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=42VRx4KA+cD1ZZnhz/34yl/kjJSKnU+ahvHX6e7S6BM=;
 b=RWZQeIL0G4T29AMwn81/jYklvI6cY3yAxn8RcOSfyHi66WVG1FrxiIYe6/N3tGrujT
 L16ZuvBVe5nJgPZc/M6p7ETio8YLmxM5elTnmveqLus9xEeEW3PrtwnYQzXrej2LPOqS
 ePTSSUdbBIm1PTkIuxJ23icCchfYgHoFVZnGxEwBDDbn5CiMYC5g0nuT+6YUHOTcICQn
 MCu3svyVajBya/Ly+HeQpDAY+/Kt/om9XuOE60zvc+62Yc/sRiP9UGAKdhEXqmdXnYj3
 hh9LmjmCUop5tSVO6wo/sWyW6vDXiEeRbS08tse4l9F+B4CRPpuwMAIuoCBkDAXjLi61
 cJnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=42VRx4KA+cD1ZZnhz/34yl/kjJSKnU+ahvHX6e7S6BM=;
 b=JJ2AN9CzEvymM+AY2CtkDgLp5yemyh7tJi99ehozRtSudJ6F6tDlljm3SQKGrOAi5B
 awp2cUC2Hm5FGAEn0+1i3ik1dBXRulqDFBvTPizYyCFKGSaiNriKiS/IREURLJ7ExMgV
 6i7itpBwFCK+60AfIAtaChdz4SXgqGcgzkp1wKBZkq2lxKHC1mSDfrsAnitq5fcfdOC9
 UZyMnsira+ZU6/l/sqv5ws1HZwdkRln906JZRjhc4GqPoDvTicm6AroAX8Q6ix2Uhj/1
 7ewc9ytHdzGq0vhDD9Xq6VNCW8Y1HtKy+/IPcAi5QFWHHNewZVyZNIu7nUwrKOZd8l0A
 +RXw==
X-Gm-Message-State: ANhLgQ1JghhU/91ruj5kzb2N6BYHbfVwV7Lj7sgOZKNhGI0OAXU31xxB
 EJMWP7TdKOTAsMw2ImuOHHBGY1oD9L4h7qdqpTs=
X-Google-Smtp-Source: ADFU+vtxCaxhzOdKDfyUMsukNtF9i7FsxURwvPDfAGfWZHOsYBIIDNeFLrWifUx6i3WVVTUJTC+kfBCnu5tKsYwnsOU=
X-Received: by 2002:a92:9c57:: with SMTP id h84mr5678517ili.94.1583258631938; 
 Tue, 03 Mar 2020 10:03:51 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:9f04:0:0:0:0:0 with HTTP;
 Tue, 3 Mar 2020 10:03:51 -0800 (PST)
From: DR CHALLY NOAH <mayorabrahamedge404@gmail.com>
Date: Tue, 3 Mar 2020 19:03:51 +0100
Message-ID: <CALqVJWei9Umiw3V9aBt=DD1yV36_Nnu3F8RkmHvA_o5pvKCc1A@mail.gmail.com>
Subject: Hello Dear
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_100352_804453_667ADF12 
X-CRM114-Status: UNSURE (  -1.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mayorabrahamedge404[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mayorabrahamedge404[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.6 MONEY_FRAUD_3          Lots of money and several fraud phrases
 0.6 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
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
Reply-To: dr.challynoah@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Dear,
What Have Kept You Waiting To Claim Your $600,000.00 USD Compensation Award?
This said fund was issued out by the UNITED NATIONS To compensate
you.Please If You Have Not Claim Your Fund (Award),Kindly contact me
at   DR.CHALLYNOAH@GMAIL.COM   for further details on how to proceed your
fund (award)release to you or better still reply back Immediately You
Receive This Information For An Urgent Confirmation And Release Of Your
Fund To You Without Delays, as your email was listed among those to be
compensated this year.Congratulations..
Best Regards,
Dr Chally Noah.
Minister Of Finance On Foreign Remittance:

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
