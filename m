Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB711FF60F
	for <lists+kexec@lfdr.de>; Thu, 18 Jun 2020 17:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Subject:
	Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=lc6DLhi6BYwNyo3fCU86lTKgFAFEcaY0dE163frBn+E=; b=E1
	/Rs6o9N3wk1kn+t0i/o8IgAnTi1GKQ5xys7+xQzKCgWXFcarSxOX2PdxmcB/NbV1zPTEGj8GAGZAD
	gcBzP1uRjLJhnuGCp4cAdequeyQU0/y8ZkBameh1tUCWsKttB89VAy4+MFZCTtzCxs5eknfTLrs9C
	NCIhBXtRbHv7ttfa0egwGI/AVW5joZmBGn5hIUnOu9GFo1kNM7J+RTl4snspB+MAeZF/4ZYzeDM89
	fa/FU0sD6tf2CPyZnPqJEfIaX1E+iMsmHkLOK9ql8DmGunw6s9Wvf/au2KpISNsp8rUzfHhtXwfUR
	yHKBpi+t+4N9LNhP86jhZfHBSP9fWIhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlw4C-0003DU-MD; Thu, 18 Jun 2020 15:03:00 +0000
Received: from sonic312-25.consmr.mail.ir2.yahoo.com ([77.238.178.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlw2X-00035C-S4
 for kexec@lists.infradead.org; Thu, 18 Jun 2020 15:01:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1592492472; bh=fH/bCqhO+/rdrFrxud7WLZNywhlisn3LiimgndMH2Zo=;
 h=Date:From:To:Subject:References:From:Subject;
 b=AhwY5HYuU+bqYDRJtEoRYjeOQubHrfoTAuj2mQj8xaUZiRINZAtmugMjiIvbF/xQ9JyNGZMDxuhi+F/rAfggtTDPF7UFp548ukJhAXDt4QjjNcapRDGoVG7Zll+MXqBjsfavyJpTEbkd05FxPqNSdsnjYtbN11EBFihm3ywO9fmMbYXY+xovBqjxVi1eWhreLABfJutuz6i7i+BR3ldq4mk1wVITfPIqqyNZYox8KOlsT0YGAe/E8ayRpMIdtxp7Z6CNfo5r9wSt34A4ZqNOL1G57EA9/uonxcK5HojXLeidXOTRQsUljeJua8UaQOQy5W7K/NBzq66WeWHTDSrq7Q==
X-YMail-OSG: sxqpCG4VM1kiZrc.NVAtFi91mWYztVPRYqOnd.5s3VNxnf0CNdAHrC.PTNjUOZ2
 9bh70wu3DB1Uaxw.foWd99HIfiUufkzVnM_g16TzX0dp1L4HgLk_LREla.oYvcyf5ydHp26.ZXE3
 1dkBvbBz974kdBzSZmiUcIMUBYZ6ZBhwzpfT6bM.zW0I9RAwWKMwq8Aji23e2gPU6wBIrmievtv4
 TlHEFj9W7jq31756N0yti.CEySDL7H0OiSGkkJaidqyOeLlzXE7wuCbZgD9dHssmD97C4OmQDItH
 tttxlpYTc3Z5qigUCWqkzJyzej9orS3X63GEfpMEAuxdulo8QP45uGYpkq1y2OH.M.WNWlDXOgSo
 eJvHoMrCItaTbur6c6LThhgcHCix5kznShqOm.769YVYkoyuIo1EOqr3iEjYXipRHKsfB4JMKLNd
 kPZ3bQYoCBdYj5tLp0gLhAHpVmTS5HXKK67N.5fA1JyjFzHo9vXmbvbBIs1M1vW7l4iYG2grjg4v
 2mdWgwULkS2BIcQS9t3eNrWVXnWqbwZucfaqjcP4Jx2DhoeSM60mlVMeB8PY8nNgidb.1jKooZvZ
 4rwcriOSoy1GLlT3G8HJyiipibVZNgQsE13E1V1QaTa5cHt5N0KbFtwdlTNERzOvr.ZEuLSbO2iG
 RjE6H0vQrl3hmMFf_jnKkcE7zsPOLiqPkAu5kl6ey1grkJyo3DX0pOCVROxiTGb3LI3P_XaqON.i
 rCcQ8EgGhTSst1vJsoZoaS3_xzJ_mikUi.BEh8X7_HddnRcJLLI.uxy3LmkfUgm_FHRjiIzUxSnm
 AFcBYFaJOSHW3v3p6vYltRhUkrus_hmVlnUKrDyik3eIC6XmVwrfBtkBYr9l1jFLtAYpCXV_JtYb
 w4plQyE549seV0chTbJXi1oMcOv0BCD8v5RFlRdX2QCUyEFaY.f5GKwmi35xGtDl0edlGvyKMDlN
 q2jyn7Q6pWmWt5Eu3pVRp43BrQ4vVIyqCG6Z4eeWwpAfESIW3na9piG7Iok_KIoPZb.7o._xW_Ze
 ttyyMzrZ6YGHAVHcYdmkdZTb99iWE6C7rTXGc3om5Zao1hnu0Ffwarqhk8E9OrsHZJVQRFdxLFSP
 ub5vJfNyOVLxgv2VozsYMBxLnVi5AUm7llcjN1RXEwniY3NSwPms9.eJKZUJGL1JB0St5gly.5hg
 lap0_XUDOz8gN3KoJGGaQfoB5WBvQUTIpLdLpTcnR8f1WiYUVo_QoXvDHU3zFqAhRyYV.8iTd8HH
 fGCuEyrZImY143TKon8ou3yLemQWuyce2p.hdsBsAzP186Eb0.ONgeydWV5iXIGP1CnJKbGCG.T1
 jzDH4QeXUDMOce1fmoiIIq402fQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.ir2.yahoo.com with HTTP; Thu, 18 Jun 2020 15:01:12 +0000
Date: Thu, 18 Jun 2020 15:01:10 +0000 (UTC)
From: Daniel Patrick <daniel.patrick101@yahoo.com>
To: daniel.patrick101@yahoo.com
Message-ID: <304491951.638070.1592492470493@mail.yahoo.com>
Subject: Good News Dear Good Friend,
MIME-Version: 1.0
References: <304491951.638070.1592492470493.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16138 YMailNodin Mozilla/4.0 (compatible; MSIE 8.0;
 Windows NT 6.1; Trident/4.0; GTB7.5; SLCC2; .NET CLR 2.0.50727;
 .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)
X-Bad-Reply: References but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_080118_041702_F8288BF2 
X-CRM114-Status: SPAM  ( -10.24  )
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [77.238.178.96 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [daniel.patrick101[at]yahoo.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.patrick101[at]yahoo.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [77.238.178.96 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.9 HK_SCAM                No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLY         From and body contain different freemails
 1.2 MONEY_FRAUD_5          Lots of money and many fraud phrases
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

Good News Dear Good Friend,

I am happy to inform you about my success in getting those funds transferred under the co-operation of a new partner from Germany.

Presently I'm in Germany for investment projects with my own share of the total sum. Meanwhile, I didn't forget your past efforts and attempts to assist me in transferring those funds despite that it failed us some how, now contact my Lawyer through his contact details here below THOUGH he is in Africa Ivory Coast.

Name: Barrister Ego Amaka
Tel: +225 55 66 29 45
Email:  barristeregoamaka@yahoo.fr

He is in Abidjan Ivory Coast, his name is Barr. Ego Amaka, ask him to send you the Cheque of $150,000.00 USD (One Hundred and Fifty Thousand United State Dollars) which i kept for your compensation for all your past efforts and attempts to assist me in this matter. I appreciated your efforts to help me at that time very much.

Feel free and get in touch with him and please do let me know immediately you receive the Cheque so that we can share the joy together after all the suffering at that time. at the moment, I'm very busy here because of the investment projects which I and my new partner are having at hand now.

I have forwarded instruction to my Lawyer on your behalf to receive the cheque, so feel free to get in touch with him, he will send it to you without any delay.

For your information, I gaved the Lawyer $100 USD incase of any expences during the Cheque delivery to you in your country please take note.

Remain Blessed
Daniel Patrick.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
